///|
const DIPOLE_NORTH_LAT : Double = 80.65

///|
const DIPOLE_NORTH_LON : Double = -72.68

///|
/// Approximate magnetic declination in degrees using a centered dipole pole.
/// It is meant for planning and visualization, not navigation.
pub fn magnetic_declination_deg(latitude_deg : Double, longitude_deg : Double) -> Double {
  let lat = deg_to_rad(clamp_latitude(latitude_deg))
  let lon = deg_to_rad(normalize_longitude(longitude_deg))
  let pole_lat = deg_to_rad(DIPOLE_NORTH_LAT)
  let pole_lon = deg_to_rad(DIPOLE_NORTH_LON)
  let dlon = pole_lon - lon
  let y = @math.sin(dlon)
  let x = @math.cos(lat) * @math.tan(pole_lat) - @math.sin(lat) * @math.cos(dlon)
  normalize_longitude(rad_to_deg(@math.atan2(y, x)))
}

///|
/// Inclination approximation in degrees from magnetic latitude.
pub fn magnetic_inclination_deg(latitude_deg : Double) -> Double {
  let lat = deg_to_rad(clamp_latitude(latitude_deg))
  rad_to_deg(@math.atan(2.0 * @math.tan(lat)))
}

///|
/// Convert a total magnetic intensity and declination/inclination to north,
/// east, and down components.
pub fn magnetic_components(
  total_nt : Double,
  declination_deg : Double,
  inclination_deg : Double
) -> (Double, Double, Double) {
  let dec = deg_to_rad(declination_deg)
  let inc = deg_to_rad(inclination_deg)
  let horizontal = total_nt * @math.cos(inc)
  (horizontal * @math.cos(dec), horizontal * @math.sin(dec), total_nt * @math.sin(inc))
}
