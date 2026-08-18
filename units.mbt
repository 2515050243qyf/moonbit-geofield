///|
const METRES_PER_DEGREE : Double = 111195.0802335329

///|
pub fn metres_to_kilometres(metres : Double) -> Double {
  metres / 1000.0
}

///|
pub fn kilometres_to_metres(kilometres : Double) -> Double {
  kilometres * 1000.0
}

///|
pub fn mgal_to_gal(mgal : Double) -> Double {
  mgal / 1000.0
}

///|
pub fn gal_to_mgal(gal : Double) -> Double {
  gal * 1000.0
}

///|
pub fn nt_to_microtesla(nt : Double) -> Double {
  nt / 1000.0
}

///|
pub fn microtesla_to_nt(value : Double) -> Double {
  value * 1000.0
}

///|
pub fn degrees_latitude_to_metres(degrees : Double) -> Double {
  degrees * METRES_PER_DEGREE
}

///|
pub fn metres_to_degrees_latitude(metres : Double) -> Double {
  metres / METRES_PER_DEGREE
}

///|
pub fn degrees_longitude_to_metres(
  degrees : Double,
  latitude_deg : Double,
) -> Double {
  degrees * METRES_PER_DEGREE * @math.cos(deg_to_rad(latitude_deg))
}

///|
pub fn metres_to_degrees_longitude(
  metres : Double,
  latitude_deg : Double,
) -> Double {
  let divisor = METRES_PER_DEGREE * @math.cos(deg_to_rad(latitude_deg))
  if divisor.abs() < 0.000000000001 {
    0.0
  } else {
    metres / divisor
  }
}

///|
pub fn convert_density_g_cm3_to_kg_m3(value : Double) -> Double {
  value * 1000.0
}

///|
pub fn convert_density_kg_m3_to_g_cm3(value : Double) -> Double {
  value / 1000.0
}

///|
pub fn signed_angle_difference_deg(a : Double, b : Double) -> Double {
  normalize_longitude(a - b)
}

///|
pub fn azimuth_to_unit_vector(azimuth_deg : Double) -> Vector3 {
  let angle = deg_to_rad(azimuth_deg)
  { x: @math.sin(angle), y: @math.cos(angle), z: 0.0 }
}

///|
pub fn vector_magnitude(vector : Vector3) -> Double {
  (vector.x * vector.x + vector.y * vector.y + vector.z * vector.z).sqrt()
}

///|
pub fn normalize_vector(vector : Vector3) -> Vector3 {
  let length = vector_magnitude(vector)
  if length == 0.0 {
    { x: 0.0, y: 0.0, z: 0.0 }
  } else {
    { x: vector.x / length, y: vector.y / length, z: vector.z / length }
  }
}
