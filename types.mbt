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
