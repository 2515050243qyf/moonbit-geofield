///|
const WGS84_A : Double = 6378137.0

///|
const WGS84_F : Double = 1.0 / 298.257223563

///|
const WGS84_B : Double = WGS84_A * (1.0 - WGS84_F)

///|
pub fn wgs84_semimajor_m() -> Double {
  WGS84_A
}

///|
pub fn wgs84_semiminor_m() -> Double {
  WGS84_B
}

///|
pub fn wgs84_flattening() -> Double {
  WGS84_F
}

///|
pub fn meridian_radius_m(latitude_deg : Double) -> Double {
  let phi = deg_to_rad(latitude_deg.clamp(min=-90.0, max=90.0))
  let e2 = WGS84_F * (2.0 - WGS84_F)
  WGS84_A *
  (1.0 - e2) /
  @math.pow(1.0 - e2 * @math.sin(phi) * @math.sin(phi), 1.5)
}

///|
pub fn prime_vertical_radius_m(latitude_deg : Double) -> Double {
  let phi = deg_to_rad(latitude_deg.clamp(min=-90.0, max=90.0))
  let e2 = WGS84_F * (2.0 - WGS84_F)
  WGS84_A / (1.0 - e2 * @math.sin(phi) * @math.sin(phi)).sqrt()
}

///|
pub fn local_degree_latitude_m(latitude_deg : Double) -> Double {
  meridian_radius_m(latitude_deg) * PI / 180.0
}

///|
pub fn local_degree_longitude_m(latitude_deg : Double) -> Double {
  prime_vertical_radius_m(latitude_deg) *
  @math.cos(deg_to_rad(latitude_deg)) *
  PI /
  180.0
}

///|
pub fn initial_bearing_deg(start : GeoPoint, finish : GeoPoint) -> Double {
  let phi1 = deg_to_rad(start.lat)
  let phi2 = deg_to_rad(finish.lat)
  let delta = deg_to_rad(finish.lon - start.lon)
  normalize_longitude(
    rad_to_deg(
      @math.atan2(
        @math.sin(delta) * @math.cos(phi2),
        @math.cos(phi1) * @math.sin(phi2) -
        @math.sin(phi1) * @math.cos(phi2) * @math.cos(delta),
      ),
    ),
  )
}

///|
pub fn final_bearing_deg(start : GeoPoint, finish : GeoPoint) -> Double {
  normalize_longitude(initial_bearing_deg(finish, start) + 180.0)
}

///|
pub fn destination_point(
  start : GeoPoint,
  bearing_deg : Double,
  distance_m : Double,
) -> GeoPoint {
  let angular = distance_m / MEAN_EARTH_RADIUS_M
  let phi1 = deg_to_rad(start.lat)
  let lambda1 = deg_to_rad(start.lon)
  let bearing = deg_to_rad(bearing_deg)
  let phi2 = @math.asin(
    @math.sin(phi1) * @math.cos(angular) +
    @math.cos(phi1) * @math.sin(angular) * @math.cos(bearing),
  )
  let lambda2 = lambda1 +
    @math.atan2(
      @math.sin(bearing) * @math.sin(angular) * @math.cos(phi1),
      @math.cos(angular) - @math.sin(phi1) * @math.sin(phi2),
    )
  {
    lat: rad_to_deg(phi2).clamp(min=-90.0, max=90.0),
    lon: normalize_longitude(rad_to_deg(lambda2)),
    elevation_m: start.elevation_m,
  }
}

///|
pub fn midpoint(a : GeoPoint, b : GeoPoint) -> GeoPoint {
  let phi1 = deg_to_rad(a.lat)
  let phi2 = deg_to_rad(b.lat)
  let lambda = deg_to_rad(b.lon - a.lon)
  let x = @math.cos(phi2) * @math.cos(lambda)
  let y = @math.cos(phi2) * @math.sin(lambda)
  let phi3 = @math.atan2(
    @math.sin(phi1) + @math.sin(phi2),
    ((@math.cos(phi1) + x) * (@math.cos(phi1) + x) + y * y).sqrt(),
  )
  let lambda3 = deg_to_rad(a.lon) + @math.atan2(y, @math.cos(phi1) + x)
  {
    lat: rad_to_deg(phi3),
    lon: normalize_longitude(rad_to_deg(lambda3)),
    elevation_m: (a.elevation_m + b.elevation_m) / 2.0,
  }
}

///|
pub fn equirectangular_distance_m(a : GeoPoint, b : GeoPoint) -> Double {
  let x = deg_to_rad(b.lon - a.lon) *
    @math.cos(deg_to_rad((a.lat + b.lat) / 2.0))
  let y = deg_to_rad(b.lat - a.lat)
  MEAN_EARTH_RADIUS_M * (x * x + y * y).sqrt()
}

///|
pub fn distance_error_m(a : GeoPoint, b : GeoPoint) -> Double {
  haversine_distance_m(a, b) - equirectangular_distance_m(a, b)
}

///|
pub fn point_approximately_equal(
  a : GeoPoint,
  b : GeoPoint,
  tolerance_m : Double,
) -> Bool {
  haversine_distance_m(a, b) <= tolerance_m &&
  (a.elevation_m - b.elevation_m).abs() <= tolerance_m
}

///|
pub fn unwrap_longitudes(points : ArrayView[GeoPoint]) -> Array[GeoPoint] {
  let output : Array[GeoPoint] = []
  let mut previous = 0.0
  for i in 0..<points.length() {
    let raw = points[i].lon
    let mut lon = raw
    if i > 0 {
      while lon - previous > 180.0 {
        lon -= 360.0
      }
      while lon - previous < -180.0 {
        lon += 360.0
      }
    }
    previous = lon
    output.push({ ..points[i], lon, })
  }
  output
}

///|
pub fn longitude_span(points : ArrayView[GeoPoint]) -> Double {
  let unwrapped = unwrap_longitudes(points)
  if unwrapped.length() < 2 {
    0.0
  } else {
    unwrapped[unwrapped.length() - 1].lon - unwrapped[0].lon
  }
}

///|
pub fn polygon_perimeter_m(
  points : ArrayView[GeoPoint],
  closed : Bool,
) -> Double {
  let mut total = 0.0
  for i in 1..<points.length() {
    total += haversine_distance_m(points[i - 1], points[i])
  }
  if closed && points.length() > 1 {
    total += haversine_distance_m(points[points.length() - 1], points[0])
  }
  total
}

///|
pub fn polygon_centroid(points : ArrayView[GeoPoint]) -> GeoPoint {
  if points.length() == 0 {
    { lat: 0.0, lon: 0.0, elevation_m: 0.0 }
  } else {
    let mut lat = 0.0
    let mut lon = 0.0
    let mut elevation = 0.0
    for point in points {
      lat += point.lat
      lon += point.lon
      elevation += point.elevation_m
    }
    let n = Double::from_int(points.length())
    {
      lat: lat / n,
      lon: normalize_longitude(lon / n),
      elevation_m: elevation / n,
    }
  }
}

///|
pub fn grid_cell_area_m2(grid : Grid, row : Int) -> Double {
  let latitude = grid.origin_lat + grid.lat_step * Double::from_int(row)
  local_degree_latitude_m(latitude).abs() *
  local_degree_longitude_m(latitude).abs() *
  grid.lat_step.abs() *
  grid.lon_step.abs()
}

///|
pub fn grid_area_m2(grid : Grid) -> Double {
  let mut area = 0.0
  for row in 0..<grid.rows {
    area += grid_cell_area_m2(grid, row) * Double::from_int(grid.cols)
  }
  area
}

///|
pub fn latitude_band_area_m2(
  min_lat : Double,
  max_lat : Double,
  min_lon : Double,
  max_lon : Double,
) -> Double {
  let width = (max_lon - min_lon).abs() / 360.0
  let low = @math.sin(deg_to_rad(min_lat.clamp(min=-90.0, max=90.0)))
  let high = @math.sin(deg_to_rad(max_lat.clamp(min=-90.0, max=90.0)))
  2.0 * PI * WGS84_A * WGS84_A * width * (high - low).abs()
}

///|
pub fn local_enu_delta_m(origin : GeoPoint, point : GeoPoint) -> Vector3 {
  {
    x: degrees_longitude_to_metres(point.lon - origin.lon, origin.lat),
    y: degrees_latitude_to_metres(point.lat - origin.lat),
    z: point.elevation_m - origin.elevation_m,
  }
}

///|
pub fn from_local_enu(origin : GeoPoint, delta : Vector3) -> GeoPoint {
  {
    lat: origin.lat + metres_to_degrees_latitude(delta.y),
    lon: normalize_longitude(
      origin.lon + metres_to_degrees_longitude(delta.x, origin.lat),
    ),
    elevation_m: origin.elevation_m + delta.z,
  }
}

///|
pub fn rotate_horizontal(vector : Vector3, angle_deg : Double) -> Vector3 {
  let angle = deg_to_rad(angle_deg)
  {
    x: vector.x * @math.cos(angle) - vector.y * @math.sin(angle),
    y: vector.x * @math.sin(angle) + vector.y * @math.cos(angle),
    z: vector.z,
  }
}

///|
pub fn dot(a : Vector3, b : Vector3) -> Double {
  a.x * b.x + a.y * b.y + a.z * b.z
}

///|
pub fn cross(a : Vector3, b : Vector3) -> Vector3 {
  {
    x: a.y * b.z - a.z * b.y,
    y: a.z * b.x - a.x * b.z,
    z: a.x * b.y - a.y * b.x,
  }
}

///|
pub fn vector_add(a : Vector3, b : Vector3) -> Vector3 {
  { x: a.x + b.x, y: a.y + b.y, z: a.z + b.z }
}

///|
pub fn vector_subtract(a : Vector3, b : Vector3) -> Vector3 {
  { x: a.x - b.x, y: a.y - b.y, z: a.z - b.z }
}

///|
pub fn vector_scale(a : Vector3, factor : Double) -> Vector3 {
  { x: a.x * factor, y: a.y * factor, z: a.z * factor }
}
