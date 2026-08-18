///|
pub fn summary(values : ArrayView[Double]) -> Summary {
  if values.length() == 0 {
    return {
      count: 0,
      missing: 0,
      minimum: 0.0,
      maximum: 0.0,
      mean: 0.0,
      variance: 0.0,
      sum: 0.0,
    }
  }
  let mut count = 0
  let mut missing = 0
  let mut sum = 0.0
  let mut minimum = 1.0e308
  let mut maximum = -1.0e308
  for value in values {
    if is_finite(value) {
      count += 1
      sum += value
      if value < minimum {
        minimum = value
      }
      if value > maximum {
        maximum = value
      }
    } else {
      missing += 1
    }
  }
  if count == 0 {
    {
      count: 0,
      missing,
      minimum: 0.0,
      maximum: 0.0,
      mean: 0.0,
      variance: 0.0,
      sum: 0.0,
    }
  } else {
    let mean = sum / Double::from_int(count)
    let mut squared = 0.0
    for value in values {
      if is_finite(value) {
        squared += (value - mean) * (value - mean)
      }
    }
    {
      count,
      missing,
      minimum,
      maximum,
      mean,
      variance: squared / Double::from_int(count),
      sum,
    }
  }
}

///|
pub fn values_from_samples(
  samples : ArrayView[FieldSample],
  policy? : MissingPolicy = SkipMissing,
) -> Array[Double] {
  let values : Array[Double] = []
  for sample in samples {
    if is_finite(sample.value) {
      values.push(sample.value)
    } else {
      match policy {
        SkipMissing => ()
        PreserveMissing => values.push(0.0 / 0.0)
        ReplaceWith(value~) => values.push(value)
      }
    }
  }
  values
}

///|
pub fn sample_summary(samples : ArrayView[FieldSample]) -> Summary {
  summary(values_from_samples(samples))
}

///|
pub fn z_score(value : Double, center : Double, scale : Double) -> Double {
  if scale == 0.0 {
    0.0
  } else {
    (value - center) / scale
  }
}

///|
pub fn rms(values : ArrayView[Double]) -> Double {
  let mut total = 0.0
  let mut count = 0
  for value in values {
    if is_finite(value) {
      total += value * value
      count += 1
    }
  }
  if count == 0 {
    0.0
  } else {
    (total / Double::from_int(count)).sqrt()
  }
}

///|
pub fn weighted_mean(
  values : ArrayView[Double],
  weights : ArrayView[Double],
) -> Double {
  let mut total = 0.0
  let mut weight_total = 0.0
  let limit = Int::min(values.length(), weights.length())
  for i in 0..<limit {
    if is_finite(values[i]) && is_finite(weights[i]) && weights[i] >= 0.0 {
      total += values[i] * weights[i]
      weight_total += weights[i]
    }
  }
  if weight_total == 0.0 {
    0.0
  } else {
    total / weight_total
  }
}

///|
pub fn percentile(values : ArrayView[Double], fraction : Double) -> Double {
  let clean : Array[Double] = []
  for value in values {
    if is_finite(value) {
      clean.push(value)
    }
  }
  clean.sort()
  if clean.length() == 0 {
    0.0
  } else {
    let index = (fraction.clamp(min=0.0, max=1.0) *
      Double::from_int(clean.length() - 1))
      .round()
      .to_int()
    clean[index]
  }
}

///|
pub fn median(values : ArrayView[Double]) -> Double {
  percentile(values, 0.5)
}

///|
pub fn interquartile_range(values : ArrayView[Double]) -> Double {
  percentile(values, 0.75) - percentile(values, 0.25)
}
