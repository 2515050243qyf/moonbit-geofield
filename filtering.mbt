///|
pub fn moving_average(
  values : ArrayView[Double],
  radius : Int,
) -> Array[Double] {
  let output : Array[Double] = []
  for i in 0..<values.length() {
    let window : Array[Double] = []
    for j in Int::max(0, i - radius)..<Int::min(values.length(), i + radius + 1) {
      if is_finite(values[j]) {
        window.push(values[j])
      }
    }
    output.push(summary(window).mean)
  }
  output
}

///|
pub fn moving_sum(values : ArrayView[Double], radius : Int) -> Array[Double] {
  let output : Array[Double] = []
  for i in 0..<values.length() {
    let window : Array[Double] = []
    for j in Int::max(0, i - radius)..<Int::min(values.length(), i + radius + 1) {
      if is_finite(values[j]) {
        window.push(values[j])
      }
    }
    output.push(summary(window).sum)
  }
  output
}

///|
pub fn moving_min(values : ArrayView[Double], radius : Int) -> Array[Double] {
  let output : Array[Double] = []
  for i in 0..<values.length() {
    let window : Array[Double] = []
    for j in Int::max(0, i - radius)..<Int::min(values.length(), i + radius + 1) {
      if is_finite(values[j]) {
        window.push(values[j])
      }
    }
    output.push(summary(window).minimum)
  }
  output
}

///|
pub fn moving_max(values : ArrayView[Double], radius : Int) -> Array[Double] {
  let output : Array[Double] = []
  for i in 0..<values.length() {
    let window : Array[Double] = []
    for j in Int::max(0, i - radius)..<Int::min(values.length(), i + radius + 1) {
      if is_finite(values[j]) {
        window.push(values[j])
      }
    }
    output.push(summary(window).maximum)
  }
  output
}

///|
pub fn moving_median(values : ArrayView[Double], radius : Int) -> Array[Double] {
  let output : Array[Double] = []
  for i in 0..<values.length() {
    let window : Array[Double] = []
    for j in Int::max(0, i - radius)..<Int::min(values.length(), i + radius + 1) {
      if is_finite(values[j]) {
        window.push(values[j])
      }
    }
    output.push(median(window))
  }
  output
}

///|
pub fn first_difference(values : ArrayView[Double]) -> Array[Double] {
  let output : Array[Double] = []
  if values.length() > 0 {
    output.push(0.0)
    for i in 1..<values.length() {
      output.push(values[i] - values[i - 1])
    }
  }
  output
}

///|
pub fn second_difference(values : ArrayView[Double]) -> Array[Double] {
  first_difference(first_difference(values))
}

///|
pub fn cumulative_sum(values : ArrayView[Double]) -> Array[Double] {
  let output : Array[Double] = []
  let mut total = 0.0
  for value in values {
    if is_finite(value) {
      total += value
    }
    output.push(total)
  }
  output
}

///|
pub fn exponential_smooth(
  values : ArrayView[Double],
  alpha : Double,
) -> Array[Double] {
  let output : Array[Double] = []
  let mut previous = 0.0
  let factor = alpha.clamp(min=0.0, max=1.0)
  for i in 0..<values.length() {
    let current = if is_finite(values[i]) { values[i] } else { previous }
    previous = if i == 0 {
      current
    } else {
      factor * current + (1.0 - factor) * previous
    }
    output.push(previous)
  }
  output
}

///|
pub fn detrend_linear(values : ArrayView[Double]) -> Array[Double] {
  let n = values.length()
  if n < 2 {
    values.to_owned()
  } else {
    let mut sx = 0.0
    let mut sy = 0.0
    let mut sxx = 0.0
    let mut sxy = 0.0
    for i in 0..<n {
      let x = Double::from_int(i)
      let y = values[i]
      sx += x
      sy += y
      sxx += x * x
      sxy += x * y
    }
    let denominator = Double::from_int(n) * sxx - sx * sx
    let slope = if denominator == 0.0 {
      0.0
    } else {
      (Double::from_int(n) * sxy - sx * sy) / denominator
    }
    let intercept = (sy - slope * sx) / Double::from_int(n)
    let output : Array[Double] = []
    for i in 0..<n {
      output.push(values[i] - (intercept + slope * Double::from_int(i)))
    }
    output
  }
}

///|
pub fn normalize_values(values : ArrayView[Double]) -> Array[Double] {
  let s = summary(values)
  if s.variance == 0.0 {
    values.map(fn(_) { 0.0 })
  } else {
    values.map(fn(value) { (value - s.mean) / s.variance.sqrt() })
  }
}
