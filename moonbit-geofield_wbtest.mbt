///|
fn assert_close(
  actual : Double,
  expected : Double,
  tolerance : Double,
) -> Unit raise {
  if (actual - expected).abs() > tolerance {
    fail("expected \{actual} to be close to \{expected}")
  }
}

///|
test "normal gravity follows WGS84 reference range" {
  assert_close(normal_gravity_mgal(0.0), 978032.53359, 0.01)
  assert_close(normal_gravity_mgal(45.0), 980619.7769, 0.1)
  assert_close(free_air_correction_mgal(100.0), 30.86, 0.001)
}

///|
test "magnetic components conserve total intensity approximately" {
  let (north, east, down) = magnetic_components(50000.0, 6.0, 55.0)
  let total = (north * north + east * east + down * down).sqrt()
  assert_close(total, 50000.0, 0.001)
  assert_true(magnetic_declination_deg(32.0, 118.0) > -180.0)
}

///|
test "grid bilinear interpolation and profile sampling" {
  let grid = make_grid(
    origin_lat=0.0,
    origin_lon=0.0,
    lat_step=1.0,
    lon_step=1.0,
    rows=2,
    cols=2,
    values=[0.0, 10.0, 20.0, 30.0],
  )
  assert_true(grid.is_valid())
  let mid = { lat: 0.5, lon: 0.5, elevation_m: 0.0 }
  match grid.sample_bilinear(mid) {
    Some(value) => assert_close(value, 15.0, 0.000001)
    None => fail("expected interpolation")
  }
  let profile = profile_between(
    grid,
    { lat: 0.0, lon: 0.0, elevation_m: 0.0 },
    { lat: 1.0, lon: 1.0, elevation_m: 0.0 },
    3,
  )
  assert_eq(profile.length(), 3)
}

///|
test "spherical harmonic model evaluates deterministic correction" {
  let model = {
    reference_radius_m: MEAN_EARTH_RADIUS_M,
    scale: 10.0,
    terms: [{ degree: 0, order: 0, cosine: 2.0, sine: 0.0 }],
  }
  let value = evaluate_spherical_harmonic(model, {
    lat: 0.0,
    lon: 0.0,
    elevation_m: 0.0,
  })
  assert_close(value, 20.0, 0.000001)
}

///|
test "csv parser and exporters round trip common columns" {
  let csv = "lat,lon,elevation_m,value,name\n32.0,118.0,12.5,42.0,nanjing"
  let samples = parse_field_samples_csv(csv)
  assert_eq(samples.length(), 1)
  assert_eq(samples[0].name, "nanjing")
  assert_true(samples_to_csv(samples).contains("nanjing"))
  assert_true(samples_to_geojson(samples).contains("\"FeatureCollection\""))
}
