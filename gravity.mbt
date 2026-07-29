///|
/// WGS84/Somigliana normal gravity on the ellipsoid, in mGal.
pub fn normal_gravity_mgal(latitude_deg : Double) -> Double {
  let phi = deg_to_rad(clamp_latitude(latitude_deg))
  let s = @math.sin(phi)
  let s2 = s * s
  let gamma = 9.7803253359 *
    (1.0 + 0.00193185265241 * s2) /
    (1.0 - 0.00669437999013 * s2).sqrt()
  gamma * 100000.0
}

///|
/// Free-air correction in mGal for an elevation in metres.
pub fn free_air_correction_mgal(height_m : Double) -> Double {
  0.3086 * height_m
}

///|
/// Bouguer slab correction in mGal. Density defaults to 2670 kg/m3.
pub fn bouguer_slab_correction_mgal(
  height_m : Double,
  density_kg_m3? : Double = 2670.0,
) -> Double {
  0.00004193 * density_kg_m3 * height_m
}

///|
/// Free-air gravity anomaly in mGal.
pub fn free_air_anomaly_mgal(
  observed_mgal : Double,
  latitude_deg : Double,
  height_m : Double,
) -> Double {
  observed_mgal -
  normal_gravity_mgal(latitude_deg) +
  free_air_correction_mgal(height_m)
}

///|
/// Simple Bouguer anomaly in mGal.
pub fn bouguer_anomaly_mgal(
  observed_mgal : Double,
  latitude_deg : Double,
  height_m : Double,
  density_kg_m3? : Double = 2670.0,
) -> Double {
  free_air_anomaly_mgal(observed_mgal, latitude_deg, height_m) -
  bouguer_slab_correction_mgal(height_m, density_kg_m3~)
}
