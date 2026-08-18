///|
pub fn profile_summary(profile : ArrayView[ProfileSample]) -> ProfileSummary {
  if profile.length() == 0 {
    return {
      samples: 0,
      distance_m: 0.0,
      minimum: 0.0,
      maximum: 0.0,
      mean: 0.0,
      range: 0.0,
    }
  }
  let values : Array[Double] = []
  for sample in profile {
    values.push(sample.value)
  }
  let s = summary(values)
  {
    samples: s.count,
    distance_m: profile[profile.length() - 1].distance_m,
    minimum: s.minimum,
    maximum: s.maximum,
    mean: s.mean,
    range: s.maximum - s.minimum,
  }
}

///|
pub fn profile_distances(points : ArrayView[GeoPoint]) -> Array[Double] {
  let distances : Array[Double] = []
  let mut total = 0.0
  for i in 0..<points.length() {
    if i > 0 {
      total += haversine_distance_m(points[i - 1], points[i])
    }
    distances.push(total)
  }
  distances
}

///|
pub fn profile_points(
  start : GeoPoint,
  finish : GeoPoint,
  count : Int,
) -> Array[GeoPoint] {
  let output : Array[GeoPoint] = []
  if count <= 0 {
    output
  } else if count == 1 {
    [start]
  } else {
    for i in 0..<count {
      output.push(
        interpolate_point(
          start,
          finish,
          Double::from_int(i) / Double::from_int(count - 1),
        ),
      )
    }
    output
  }
}

///|
pub fn profile_resample(
  profile : ArrayView[ProfileSample],
  count : Int,
) -> Array[ProfileSample] {
  let output : Array[ProfileSample] = []
  if profile.length() == 0 || count <= 0 {
    output
  } else if count == 1 {
    [profile[0]]
  } else {
    let end = profile[profile.length() - 1].distance_m
    for i in 0..<count {
      let target = end * Double::from_int(i) / Double::from_int(count - 1)
      let mut chosen = profile[0]
      for sample in profile {
        if sample.distance_m <= target {
          chosen = sample
        }
      }
      output.push({ ..chosen, distance_m: target })
    }
    output
  }
}

///|
pub fn profile_to_samples(
  profile : ArrayView[ProfileSample],
  name? : String = "profile",
) -> Array[FieldSample] {
  let output : Array[FieldSample] = []
  for item in profile {
    output.push({ point: item.point, value: item.value, name })
  }
  output
}

///|
pub fn profile_values(profile : ArrayView[ProfileSample]) -> Array[Double] {
  let output : Array[Double] = []
  for item in profile {
    output.push(item.value)
  }
  output
}

///|
pub fn profile_cumulative_change(
  profile : ArrayView[ProfileSample],
) -> Array[Double] {
  let output : Array[Double] = []
  if profile.length() > 0 {
    let first = profile[0].value
    for item in profile {
      output.push(item.value - first)
    }
  }
  output
}

///|
pub fn profile_slope(profile : ArrayView[ProfileSample]) -> Array[Double] {
  let output : Array[Double] = []
  for i in 0..<profile.length() {
    if i == 0 {
      output.push(0.0)
    } else {
      output.push(safe_profile_slope(profile[i - 1], profile[i]))
    }
  }
  output
}

///|
fn safe_profile_slope(a : ProfileSample, b : ProfileSample) -> Double {
  if b.distance_m == a.distance_m {
    0.0
  } else {
    (b.value - a.value) / (b.distance_m - a.distance_m)
  }
}

///|
pub fn profile_integral(profile : ArrayView[ProfileSample]) -> Double {
  let mut total = 0.0
  for i in 1..<profile.length() {
    let width = profile[i].distance_m - profile[i - 1].distance_m
    total += width * (profile[i].value + profile[i - 1].value) / 2.0
  }
  total
}

///|
pub fn profile_max_change(profile : ArrayView[ProfileSample]) -> Double {
  let mut maximum = 0.0
  for i in 1..<profile.length() {
    maximum = Double::max(
      maximum,
      (profile[i].value - profile[i - 1].value).abs(),
    )
  }
  maximum
}

///|
pub fn profile_monotonic(
  profile : ArrayView[ProfileSample],
  increasing : Bool,
) -> Bool {
  for i in 1..<profile.length() {
    if increasing && profile[i].value < profile[i - 1].value {
      return false
    }
    if !increasing && profile[i].value > profile[i - 1].value {
      return false
    }
  }
  true
}

///|
pub fn profile_slice(
  profile : ArrayView[ProfileSample],
  start : Int,
  end : Int,
) -> Array[ProfileSample] {
  let output : Array[ProfileSample] = []
  let first = Int::max(0, start)
  let last = Int::min(profile.length(), end)
  if first < last {
    for i in first..<last {
      output.push(profile[i])
    }
  }
  output
}

///|
pub fn profile_reverse(
  profile : ArrayView[ProfileSample],
) -> Array[ProfileSample] {
  let output : Array[ProfileSample] = []
  let mut i = profile.length()
  while i > 0 {
    i -= 1
    output.push(profile[i])
  }
  output
}

///|
pub fn profile_filter_range(
  profile : ArrayView[ProfileSample],
  range : NumericRange,
) -> Array[ProfileSample] {
  let output : Array[ProfileSample] = []
  for item in profile {
    if range_contains(range, item.value) {
      output.push(item)
    }
  }
  output
}
