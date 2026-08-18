///|
/// A geographic point in degrees and metres.
pub(all) struct GeoPoint {
  lat : Double
  lon : Double
  elevation_m : Double
} derive(Debug, Eq)

///|
/// A scalar geophysical observation attached to a geographic point.
pub(all) struct FieldSample {
  point : GeoPoint
  value : Double
  name : String
} derive(Debug, Eq)

///|
/// Regular latitude/longitude grid in row-major order.
pub(all) struct Grid {
  origin_lat : Double
  origin_lon : Double
  lat_step : Double
  lon_step : Double
  rows : Int
  cols : Int
  values : Array[Double]
} derive(Debug, Eq)

///|
/// Result of sampling a grid along a transect.
pub(all) struct ProfileSample {
  point : GeoPoint
  distance_m : Double
  value : Double
} derive(Debug, Eq)

///|
/// One coefficient pair for a compact spherical-harmonic-style model.
pub(all) struct HarmonicTerm {
  degree : Int
  order : Int
  cosine : Double
  sine : Double
} derive(Debug, Eq)

///|
/// Lightweight spherical harmonic model. The coefficients are dimensionless;
/// callers decide whether the returned scalar represents potential, anomaly,
/// or a normalized field correction.
pub(all) struct SphericalHarmonicModel {
  reference_radius_m : Double
  scale : Double
  terms : Array[HarmonicTerm]
} derive(Debug, Eq)

///|
/// A closed numeric interval used by quality-control and resampling APIs.
pub(all) struct NumericRange {
  minimum : Double
  maximum : Double
} derive(Debug, Eq)

///|
pub enum QualityFlag {
  Good
  Suspect
  Missing
  Invalid
  Outlier
} derive(Debug, Eq)

///|
/// A field sample with a quality flag and optional source label.
pub(all) struct QualitySample {
  sample : FieldSample
  flag : QualityFlag
  uncertainty : Double
  source : String
} derive(Debug, Eq)

///|
pub enum MissingPolicy {
  SkipMissing
  PreserveMissing
  ReplaceWith(value~ : Double)
} derive(Debug, Eq)

///|
pub(all) struct Summary {
  count : Int
  missing : Int
  minimum : Double
  maximum : Double
  mean : Double
  variance : Double
  sum : Double
} derive(Debug, Eq)

///|
pub(all) struct GridExtent {
  min_lat : Double
  max_lat : Double
  min_lon : Double
  max_lon : Double
} derive(Debug, Eq)

///|
pub(all) struct GridCell {
  row : Int
  col : Int
  point : GeoPoint
  value : Double
} derive(Debug, Eq)

///|
pub(all) struct Vector3 {
  x : Double
  y : Double
  z : Double
} derive(Debug, Eq)

///|
pub(all) struct Gradient {
  north_per_degree : Double
  east_per_degree : Double
  magnitude : Double
  azimuth_deg : Double
} derive(Debug, Eq)

///|
pub(all) struct ProfileSummary {
  samples : Int
  distance_m : Double
  minimum : Double
  maximum : Double
  mean : Double
  range : Double
} derive(Debug, Eq)

///|
pub(all) struct ContourSegment {
  start : GeoPoint
  finish : GeoPoint
  level : Double
} derive(Debug, Eq)

///|
pub(all) struct CoefficientParseError {
  line : Int
  message : String
} derive(Debug, Eq)
