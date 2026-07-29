///|
fn factorial_ratio(a : Int, b : Int) -> Double {
  if a <= b {
    1.0
  } else {
    for acc = 1.0, n = b + 1; n <= a; {
      continue acc * Double::from_int(n), n + 1
    } nobreak {
      acc
    }
  }
}

///|
fn associated_legendre(degree : Int, order : Int, x : Double) -> Double {
  if degree < 0 || order < 0 || order > degree {
    0.0
  } else if degree == 0 && order == 0 {
    1.0
  } else {
    let base = @math.pow(
      Double::max(0.0, 1.0 - x * x),
      Double::from_int(order) / 2.0,
    )
    let pmm = if order == 0 {
      1.0
    } else {
      for acc = 1.0, k = 1; k <= order; {
        continue acc * Double::from_int(2 * k - 1) * -1.0, k + 1
      } nobreak {
        acc * base
      }
    }
    if degree == order {
      pmm
    } else {
      let pm1m = x * Double::from_int(2 * order + 1) * pmm
      if degree == order + 1 {
        pm1m
      } else {
        for prev = pmm, curr = pm1m, n = order + 2; n <= degree; {
          let next = (
              Double::from_int(2 * n - 1) * x * curr -
              Double::from_int(n + order - 1) * prev
            ) /
            Double::from_int(n - order)
          continue curr, next, n + 1
        } nobreak {
          curr
        }
      }
    }
  }
}

///|
fn harmonic_normalization(degree : Int, order : Int) -> Double {
  let delta = if order == 0 { 1.0 } else { 2.0 }
  (delta *
  Double::from_int(2 * degree + 1) *
  factorial_ratio(degree - order, degree + order)).sqrt()
}

///|
/// Evaluate a compact spherical-harmonic-style model at a geographic point.
pub fn evaluate_spherical_harmonic(
  model : SphericalHarmonicModel,
  point : GeoPoint,
) -> Double {
  let lat = deg_to_rad(clamp_latitude(point.lat))
  let lon = deg_to_rad(normalize_longitude(point.lon))
  let radius = MEAN_EARTH_RADIUS_M + point.elevation_m
  let x = @math.sin(lat)
  for total = 0.0, i = 0; i < model.terms.length(); {
    let term = model.terms[i]
    let n = term.degree
    let m = term.order
    let radial = @math.pow(
      model.reference_radius_m / radius,
      Double::from_int(n + 1),
    )
    let p = associated_legendre(n, m, x) * harmonic_normalization(n, m)
    let phase = Double::from_int(m) * lon
    let wave = term.cosine * @math.cos(phase) + term.sine * @math.sin(phase)
    continue total + radial * p * wave, i + 1
  } nobreak {
    model.scale * total
  }
}

///|
pub fn empty_harmonic_model(scale? : Double = 1.0) -> SphericalHarmonicModel {
  { reference_radius_m: MEAN_EARTH_RADIUS_M, scale, terms: [] }
}
