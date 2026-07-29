///|
/// Demonstration CLI for the geofield library.
/// Run with `moon run cmd/main` from the project root.
fn main {
  let station = @geofield.GeoPoint::{ lat: 32.0, lon: 118.0, elevation_m: 25.0 }
  let normal = @geofield.normal_gravity_mgal(station.lat)
  let declination = @geofield.magnetic_declination_deg(station.lat, station.lon)
  println(
    "station: lat=\{station.lat}, lon=\{station.lon}, h=\{station.elevation_m}m",
  )
  println("normal gravity: \{normal} mGal")
  println("magnetic declination estimate: \{declination} deg")
  let grid = @geofield.make_grid(
    origin_lat=32.0,
    origin_lon=118.0,
    lat_step=0.5,
    lon_step=0.5,
    rows=2,
    cols=2,
    values=[10.0, 12.0, 18.0, 22.0],
  )
  let end = @geofield.GeoPoint::{ lat: 32.5, lon: 118.5, elevation_m: 40.0 }
  let profile = @geofield.profile_between(grid, station, end, 3)
  println(@geofield.profile_to_csv(profile))
}
