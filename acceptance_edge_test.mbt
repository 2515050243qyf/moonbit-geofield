///|
fn assert_near(
  actual : Double,
  expected : Double,
  tolerance : Double,
) -> Unit raise {
  if (actual - expected).abs() > tolerance {
    fail("numeric result outside tolerance")
  }
}

///|
test "validation accepts boundaries and rejects malformed values" {
  assert_true(valid_latitude(-90.0))
  assert_true(valid_latitude(90.0))
  assert_true(!valid_latitude(90.1))
  assert_true(valid_longitude(540.0))
  assert_true(!valid_longitude(540.1))
  assert_true(valid_point({ lat: 0.0, lon: 0.0, elevation_m: 0.0 }))
}

///|
test "statistics handle empty, constant, and missing values" {
  let empty = summary([])
  assert_eq(empty.count, 0)
  let values = [1.0, 2.0, 3.0, 0.0 / 0.0]
  let s = summary(values)
  assert_eq(s.count, 3)
  assert_eq(s.missing, 1)
  assert_near(s.mean, 2.0, 0.000001)
  assert_near(median(values), 2.0, 0.000001)
  assert_near(rms([3.0, 4.0]), 3.5355339059, 0.000001)
}

///|
test "grid edge behavior is safe" {
  let invalid = make_grid(
    origin_lat=0.0,
    origin_lon=0.0,
    lat_step=0.0,
    lon_step=1.0,
    rows=2,
    cols=2,
    values=[1.0, 2.0, 3.0, 4.0],
  )
  assert_true(!invalid.is_valid())
  let grid = make_grid(
    origin_lat=0.0,
    origin_lon=0.0,
    lat_step=1.0,
    lon_step=1.0,
    rows=3,
    cols=3,
    values=[0.0, 1.0, 2.0, 1.0, 2.0, 3.0, 2.0, 3.0, 4.0],
  )
  assert_true(grid.contains({ lat: 1.0, lon: 1.0, elevation_m: 0.0 }))
  assert_true(!grid.contains({ lat: 5.0, lon: 1.0, elevation_m: 0.0 }))
  assert_eq(grid.row(-1).length(), 0)
  assert_eq(grid.column(99).length(), 0)
  assert_near(grid.gradient_at(1, 1).unwrap().magnitude, 1.414213562, 0.000001)
  assert_near(grid.laplacian_at(1, 1).unwrap(), 0.0, 0.000001)
}

///|
test "geodesy round trips local coordinates" {
  let origin : GeoPoint = { lat: 32.0, lon: 118.0, elevation_m: 20.0 }
  let delta : Vector3 = { x: 100.0, y: 200.0, z: 30.0 }
  let point = from_local_enu(origin, delta)
  let recovered = local_enu_delta_m(origin, point)
  assert_near(recovered.x, delta.x, 0.01)
  assert_near(recovered.y, delta.y, 0.01)
  assert_near(recovered.z, delta.z, 0.000001)
  assert_near(haversine_distance_m(origin, origin), 0.0, 0.000001)
  assert_true(
    initial_bearing_deg(origin, destination_point(origin, 90.0, 1000.0)) > 80.0,
  )
}

///|
test "filters preserve length and remove linear trend" {
  let values = [1.0, 2.0, 100.0, 4.0, 5.0]
  assert_eq(moving_median(values, 1).length(), values.length())
  assert_eq(moving_average(values, 2).length(), values.length())
  assert_eq(first_difference(values).length(), values.length())
  let trend = detrend_linear([2.0, 4.0, 6.0, 8.0])
  for value in trend {
    assert_near(value, 0.0, 0.000001)
  }
}

///|
test "profiles handle singleton and reversed ranges" {
  let grid = make_grid(
    origin_lat=0.0,
    origin_lon=0.0,
    lat_step=1.0,
    lon_step=1.0,
    rows=2,
    cols=2,
    values=[0.0, 1.0, 2.0, 3.0],
  )
  let start : GeoPoint = { lat: 0.0, lon: 0.0, elevation_m: 0.0 }
  let finish : GeoPoint = { lat: 1.0, lon: 1.0, elevation_m: 0.0 }
  assert_eq(profile_between(grid, start, finish, 0).length(), 0)
  assert_eq(profile_between(grid, start, finish, 1).length(), 1)
  let profile = profile_between(grid, start, finish, 5)
  assert_eq(profile_summary(profile).samples, 5)
  assert_eq(profile_resample(profile, 3).length(), 3)
  assert_eq(
    profile_filter_range(profile, make_range(minimum=1.0, maximum=2.0)).length(),
    1,
  )
}

///|
test "unit and vector operations are deterministic" {
  assert_near(mgal_to_gal(1000.0), 1.0, 0.000001)
  assert_near(degrees_latitude_to_metres(1.0), 111195.0802, 0.001)
  let vector = normalize_vector({ x: 3.0, y: 4.0, z: 0.0 })
  assert_near(vector_magnitude(vector), 1.0, 0.000001)
  assert_near(dot(vector, vector), 1.0, 0.000001)
  assert_near(
    vector_magnitude(
      cross({ x: 1.0, y: 0.0, z: 0.0 }, { x: 0.0, y: 1.0, z: 0.0 }),
    ),
    1.0,
    0.000001,
  )
}

///|
test "harmonic invalid terms contribute nothing" {
  assert_true(!valid_term({ degree: 1, order: 2, cosine: 1.0, sine: 0.0 }))
  let model = empty_harmonic_model()
  assert_true(valid_model(model))
  assert_near(
    evaluate_spherical_harmonic(model, {
      lat: 90.0,
      lon: 180.0,
      elevation_m: 0.0,
    }),
    0.0,
    0.000001,
  )
}
