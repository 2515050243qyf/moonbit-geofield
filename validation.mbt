///|
pub fn is_finite(value : Double) -> Bool {
  value == value && value.abs() < 1.0e308
}

///|
pub fn valid_latitude(latitude_deg : Double) -> Bool {
  is_finite(latitude_deg) && latitude_deg >= -90.0 && latitude_deg <= 90.0
}

///|
pub fn valid_longitude(longitude_deg : Double) -> Bool {
  is_finite(longitude_deg) && longitude_deg >= -540.0 && longitude_deg <= 540.0
}

///|
pub fn valid_point(point : GeoPoint) -> Bool {
  valid_latitude(point.lat) &&
  valid_longitude(point.lon) &&
  is_finite(point.elevation_m)
}

///|
pub fn valid_range(range : NumericRange) -> Bool {
  is_finite(range.minimum) &&
  is_finite(range.maximum) &&
  range.minimum <= range.maximum
}

///|
pub fn range_contains(range : NumericRange, value : Double) -> Bool {
  valid_range(range) &&
  is_finite(value) &&
  value >= range.minimum &&
  value <= range.maximum
}

///|
pub fn make_range(minimum~ : Double, maximum~ : Double) -> NumericRange {
  { minimum, maximum }
}

///|
pub fn clamp_to_range(value : Double, range : NumericRange) -> Double {
  if value < range.minimum {
    range.minimum
  } else if value > range.maximum {
    range.maximum
  } else {
    value
  }
}

///|
pub fn valid_grid(grid : Grid) -> Bool {
  grid.is_valid() &&
  is_finite(grid.origin_lat) &&
  is_finite(grid.origin_lon) &&
  is_finite(grid.lat_step) &&
  is_finite(grid.lon_step) &&
  grid.values.all(fn(value) { is_finite(value) })
}

///|
pub fn valid_term(term : HarmonicTerm) -> Bool {
  term.degree >= 0 &&
  term.order >= 0 &&
  term.order <= term.degree &&
  is_finite(term.cosine) &&
  is_finite(term.sine)
}

///|
pub fn valid_model(model : SphericalHarmonicModel) -> Bool {
  is_finite(model.reference_radius_m) &&
  model.reference_radius_m > 0.0 &&
  is_finite(model.scale) &&
  model.terms.all(valid_term)
}

///|
pub fn validate_samples(
  samples : ArrayView[FieldSample],
) -> Array[QualitySample] {
  let output : Array[QualitySample] = []
  for sample in samples {
    let flag = if !valid_point(sample.point) || !is_finite(sample.value) {
      Invalid
    } else {
      Good
    }
    output.push({ sample, flag, uncertainty: 0.0, source: "unknown" })
  }
  output
}

///|
pub fn mark_missing(sample : FieldSample) -> QualitySample {
  { sample, flag: Missing, uncertainty: 0.0, source: "unknown" }
}

///|
pub fn mark_outlier(
  sample : FieldSample,
  uncertainty~ : Double,
) -> QualitySample {
  { sample, flag: Outlier, uncertainty, source: "quality-control" }
}

///|
pub fn quality_is_usable(flag : QualityFlag) -> Bool {
  flag == Good || flag == Suspect
}

///|
pub fn quality_name(flag : QualityFlag) -> String {
  match flag {
    Good => "good"
    Suspect => "suspect"
    Missing => "missing"
    Invalid => "invalid"
    Outlier => "outlier"
  }
}

///|
pub fn missing_policy_names() -> Array[String] {
  let policies : Array[MissingPolicy] = [
    SkipMissing,
    PreserveMissing,
    ReplaceWith(value=0.0),
  ]
  let names : Array[String] = []
  for policy in policies {
    match policy {
      SkipMissing => names.push("skip")
      PreserveMissing => names.push("preserve")
      ReplaceWith(_) => names.push("replace")
    }
  }
  names
}
