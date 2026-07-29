///|
const PI : Double = 3.141592653589793

///|
const MEAN_EARTH_RADIUS_M : Double = 6371008.8

///|
pub fn deg_to_rad(deg : Double) -> Double {
  deg * PI / 180.0
}

///|
pub fn rad_to_deg(rad : Double) -> Double {
  rad * 180.0 / PI
}

///|
pub fn clamp_latitude(lat : Double) -> Double {
  lat.clamp(min=-90.0, max=90.0)
}

///|
pub fn normalize_longitude(lon : Double) -> Double {
  for x = lon; x < -180.0 || x >= 180.0; {
    if x < -180.0 {
      continue x + 360.0
    } else {
      continue x - 360.0
    }
  } nobreak {
    x
  }
}

///|
pub fn haversine_distance_m(a : GeoPoint, b : GeoPoint) -> Double {
  let lat1 = deg_to_rad(a.lat)
  let lat2 = deg_to_rad(b.lat)
  let dlat = lat2 - lat1
  let dlon = deg_to_rad(b.lon - a.lon)
  let s1 = @math.sin(dlat / 2.0)
  let s2 = @math.sin(dlon / 2.0)
  let h = s1 * s1 + @math.cos(lat1) * @math.cos(lat2) * s2 * s2
  2.0 * MEAN_EARTH_RADIUS_M * @math.asin(Double::min(1.0, h.sqrt()))
}

///|
pub fn lerp(a : Double, b : Double, t : Double) -> Double {
  a + (b - a) * t
}

///|
pub fn interpolate_point(a : GeoPoint, b : GeoPoint, t : Double) -> GeoPoint {
  {
    lat: lerp(a.lat, b.lat, t),
    lon: normalize_longitude(lerp(a.lon, b.lon, t)),
    elevation_m: lerp(a.elevation_m, b.elevation_m, t),
  }
}
