///|
/// Deterministic model presets for reproducible regional processing.

///|
pub fn regional_harmonic_001(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.25)
  let term = { degree: 0, order: 0, cosine: 1.0, sine: 0.0 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_001(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2500.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_002(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.35)
  let term = { degree: 1, order: 1, cosine: 1.1, sine: 0.1 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_002(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2525.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_003(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.45)
  let term = { degree: 2, order: 2, cosine: 1.2, sine: 0.2 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_003(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2550.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_004(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.55)
  let term = { degree: 3, order: 3, cosine: 1.3, sine: 0.3 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_004(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2575.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_005(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.65)
  let term = { degree: 4, order: 0, cosine: 1.4, sine: 0.4 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_005(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2600.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_006(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.75)
  let term = { degree: 5, order: 1, cosine: 1.5, sine: 0.5 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_006(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2625.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_007(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.85)
  let term = { degree: 6, order: 2, cosine: 1.6, sine: 0.6 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_007(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2650.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_008(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.95)
  let term = { degree: 7, order: 3, cosine: 1.7, sine: 0.0 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_008(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2675.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_009(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=1.05)
  let term = { degree: 0, order: 0, cosine: 1.8, sine: 0.1 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_009(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2500.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_010(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.25)
  let term = { degree: 1, order: 1, cosine: 1.9, sine: 0.2 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_010(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2525.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_011(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.35)
  let term = { degree: 2, order: 2, cosine: 2.0, sine: 0.3 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_011(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2550.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_012(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.45)
  let term = { degree: 3, order: 3, cosine: 1.0, sine: 0.4 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_012(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2575.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_013(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.55)
  let term = { degree: 4, order: 0, cosine: 1.1, sine: 0.5 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_013(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2600.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_014(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.65)
  let term = { degree: 5, order: 1, cosine: 1.2, sine: 0.6 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_014(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2625.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_015(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.75)
  let term = { degree: 6, order: 2, cosine: 1.3, sine: 0.0 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_015(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2650.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_016(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.85)
  let term = { degree: 7, order: 3, cosine: 1.4, sine: 0.1 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_016(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2675.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_017(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.95)
  let term = { degree: 0, order: 0, cosine: 1.5, sine: 0.2 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_017(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2500.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_018(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=1.05)
  let term = { degree: 1, order: 1, cosine: 1.6, sine: 0.3 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_018(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2525.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_019(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.25)
  let term = { degree: 2, order: 2, cosine: 1.7, sine: 0.4 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_019(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2550.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_020(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.35)
  let term = { degree: 3, order: 3, cosine: 1.8, sine: 0.5 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_020(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2575.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_021(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.45)
  let term = { degree: 4, order: 0, cosine: 1.9, sine: 0.6 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_021(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2600.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_022(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.55)
  let term = { degree: 5, order: 1, cosine: 2.0, sine: 0.0 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_022(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2625.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_023(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.65)
  let term = { degree: 6, order: 2, cosine: 1.0, sine: 0.1 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_023(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2650.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_024(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.75)
  let term = { degree: 7, order: 3, cosine: 1.1, sine: 0.2 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_024(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2675.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_025(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.85)
  let term = { degree: 0, order: 0, cosine: 1.2, sine: 0.3 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_025(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2500.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_026(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.95)
  let term = { degree: 1, order: 1, cosine: 1.3, sine: 0.4 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_026(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2525.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_027(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=1.05)
  let term = { degree: 2, order: 2, cosine: 1.4, sine: 0.5 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_027(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2550.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_028(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.25)
  let term = { degree: 3, order: 3, cosine: 1.5, sine: 0.6 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_028(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2575.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_029(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.35)
  let term = { degree: 4, order: 0, cosine: 1.6, sine: 0.0 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_029(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2600.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_030(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.45)
  let term = { degree: 5, order: 1, cosine: 1.7, sine: 0.1 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_030(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2625.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_031(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.55)
  let term = { degree: 6, order: 2, cosine: 1.8, sine: 0.2 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_031(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2650.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_032(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.65)
  let term = { degree: 7, order: 3, cosine: 1.9, sine: 0.3 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_032(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2675.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_033(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.75)
  let term = { degree: 0, order: 0, cosine: 2.0, sine: 0.4 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_033(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2500.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_034(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.85)
  let term = { degree: 1, order: 1, cosine: 1.0, sine: 0.5 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_034(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2525.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_035(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.95)
  let term = { degree: 2, order: 2, cosine: 1.1, sine: 0.6 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_035(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2550.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_036(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=1.05)
  let term = { degree: 3, order: 3, cosine: 1.2, sine: 0.0 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_036(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2575.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_037(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.25)
  let term = { degree: 4, order: 0, cosine: 1.3, sine: 0.1 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_037(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2600.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_038(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.35)
  let term = { degree: 5, order: 1, cosine: 1.4, sine: 0.2 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_038(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2625.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_039(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.45)
  let term = { degree: 6, order: 2, cosine: 1.5, sine: 0.3 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_039(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2650.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_040(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.55)
  let term = { degree: 7, order: 3, cosine: 1.6, sine: 0.4 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_040(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2675.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_041(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.65)
  let term = { degree: 0, order: 0, cosine: 1.7, sine: 0.5 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_041(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2500.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_042(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.75)
  let term = { degree: 1, order: 1, cosine: 1.8, sine: 0.6 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_042(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2525.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_043(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.85)
  let term = { degree: 2, order: 2, cosine: 1.9, sine: 0.0 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_043(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2550.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_044(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.95)
  let term = { degree: 3, order: 3, cosine: 2.0, sine: 0.1 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_044(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2575.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_045(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=1.05)
  let term = { degree: 4, order: 0, cosine: 1.0, sine: 0.2 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_045(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2600.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_046(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.25)
  let term = { degree: 5, order: 1, cosine: 1.1, sine: 0.3 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_046(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2625.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_047(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.35)
  let term = { degree: 6, order: 2, cosine: 1.2, sine: 0.4 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_047(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2650.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_048(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.45)
  let term = { degree: 7, order: 3, cosine: 1.3, sine: 0.5 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_048(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2675.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_049(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.55)
  let term = { degree: 0, order: 0, cosine: 1.4, sine: 0.6 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_049(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2500.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_050(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.65)
  let term = { degree: 1, order: 1, cosine: 1.5, sine: 0.0 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_050(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2525.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_051(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.75)
  let term = { degree: 2, order: 2, cosine: 1.6, sine: 0.1 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_051(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2550.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_052(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.85)
  let term = { degree: 3, order: 3, cosine: 1.7, sine: 0.2 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_052(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2575.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_053(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.95)
  let term = { degree: 4, order: 0, cosine: 1.8, sine: 0.3 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_053(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2600.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_054(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=1.05)
  let term = { degree: 5, order: 1, cosine: 1.9, sine: 0.4 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_054(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2625.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_055(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.25)
  let term = { degree: 6, order: 2, cosine: 2.0, sine: 0.5 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_055(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2650.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_056(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.35)
  let term = { degree: 7, order: 3, cosine: 1.0, sine: 0.6 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_056(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2675.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_057(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.45)
  let term = { degree: 0, order: 0, cosine: 1.1, sine: 0.0 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_057(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2500.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_058(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.55)
  let term = { degree: 1, order: 1, cosine: 1.2, sine: 0.1 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_058(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2525.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_059(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.65)
  let term = { degree: 2, order: 2, cosine: 1.3, sine: 0.2 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_059(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2550.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_060(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.75)
  let term = { degree: 3, order: 3, cosine: 1.4, sine: 0.3 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_060(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2575.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_061(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.85)
  let term = { degree: 4, order: 0, cosine: 1.5, sine: 0.4 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_061(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2600.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_062(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.95)
  let term = { degree: 5, order: 1, cosine: 1.6, sine: 0.5 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_062(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2625.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_063(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=1.05)
  let term = { degree: 6, order: 2, cosine: 1.7, sine: 0.6 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_063(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2650.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_064(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.25)
  let term = { degree: 7, order: 3, cosine: 1.8, sine: 0.0 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_064(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2675.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_065(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.35)
  let term = { degree: 0, order: 0, cosine: 1.9, sine: 0.1 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_065(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2500.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_066(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.45)
  let term = { degree: 1, order: 1, cosine: 2.0, sine: 0.2 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_066(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2525.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_067(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.55)
  let term = { degree: 2, order: 2, cosine: 1.0, sine: 0.3 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_067(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2550.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_068(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.65)
  let term = { degree: 3, order: 3, cosine: 1.1, sine: 0.4 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_068(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2575.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_069(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.75)
  let term = { degree: 4, order: 0, cosine: 1.2, sine: 0.5 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_069(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2600.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_070(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.85)
  let term = { degree: 5, order: 1, cosine: 1.3, sine: 0.6 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_070(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2625.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_071(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.95)
  let term = { degree: 6, order: 2, cosine: 1.4, sine: 0.0 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_071(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2650.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_072(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=1.05)
  let term = { degree: 7, order: 3, cosine: 1.5, sine: 0.1 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_072(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2675.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_073(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.25)
  let term = { degree: 0, order: 0, cosine: 1.6, sine: 0.2 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_073(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2500.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_074(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.35)
  let term = { degree: 1, order: 1, cosine: 1.7, sine: 0.3 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_074(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2525.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_075(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.45)
  let term = { degree: 2, order: 2, cosine: 1.8, sine: 0.4 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_075(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2550.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_076(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.55)
  let term = { degree: 3, order: 3, cosine: 1.9, sine: 0.5 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_076(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2575.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_077(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.65)
  let term = { degree: 4, order: 0, cosine: 2.0, sine: 0.6 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_077(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2600.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_078(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.75)
  let term = { degree: 5, order: 1, cosine: 1.0, sine: 0.0 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_078(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2625.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_079(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.85)
  let term = { degree: 6, order: 2, cosine: 1.1, sine: 0.1 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_079(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2650.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_080(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.95)
  let term = { degree: 7, order: 3, cosine: 1.2, sine: 0.2 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_080(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2675.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_081(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=1.05)
  let term = { degree: 0, order: 0, cosine: 1.3, sine: 0.3 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_081(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2500.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_082(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.25)
  let term = { degree: 1, order: 1, cosine: 1.4, sine: 0.4 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_082(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2525.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_083(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.35)
  let term = { degree: 2, order: 2, cosine: 1.5, sine: 0.5 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_083(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2550.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_084(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.45)
  let term = { degree: 3, order: 3, cosine: 1.6, sine: 0.6 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_084(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2575.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_085(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.55)
  let term = { degree: 4, order: 0, cosine: 1.7, sine: 0.0 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_085(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2600.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_086(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.65)
  let term = { degree: 5, order: 1, cosine: 1.8, sine: 0.1 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_086(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2625.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_087(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.75)
  let term = { degree: 6, order: 2, cosine: 1.9, sine: 0.2 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_087(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2650.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_088(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.85)
  let term = { degree: 7, order: 3, cosine: 2.0, sine: 0.3 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_088(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2675.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_089(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.95)
  let term = { degree: 0, order: 0, cosine: 1.0, sine: 0.4 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_089(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2500.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_090(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=1.05)
  let term = { degree: 1, order: 1, cosine: 1.1, sine: 0.5 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_090(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2525.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_091(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.25)
  let term = { degree: 2, order: 2, cosine: 1.2, sine: 0.6 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_091(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2550.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_092(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.35)
  let term = { degree: 3, order: 3, cosine: 1.3, sine: 0.0 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_092(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2575.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_093(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.45)
  let term = { degree: 4, order: 0, cosine: 1.4, sine: 0.1 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_093(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2600.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_094(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.55)
  let term = { degree: 5, order: 1, cosine: 1.5, sine: 0.2 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_094(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2625.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_095(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.65)
  let term = { degree: 6, order: 2, cosine: 1.6, sine: 0.3 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_095(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2650.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_096(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.75)
  let term = { degree: 7, order: 3, cosine: 1.7, sine: 0.4 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_096(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2675.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_097(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.85)
  let term = { degree: 0, order: 0, cosine: 1.8, sine: 0.5 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_097(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2500.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_098(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.95)
  let term = { degree: 1, order: 1, cosine: 1.9, sine: 0.6 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_098(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2525.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_099(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=1.05)
  let term = { degree: 2, order: 2, cosine: 2.0, sine: 0.0 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_099(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2550.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_100(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.25)
  let term = { degree: 3, order: 3, cosine: 1.0, sine: 0.1 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_100(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2575.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_101(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.35)
  let term = { degree: 4, order: 0, cosine: 1.1, sine: 0.2 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_101(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2600.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_102(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.45)
  let term = { degree: 5, order: 1, cosine: 1.2, sine: 0.3 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_102(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2625.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_103(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.55)
  let term = { degree: 6, order: 2, cosine: 1.3, sine: 0.4 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_103(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2650.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_104(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.65)
  let term = { degree: 7, order: 3, cosine: 1.4, sine: 0.5 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_104(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2675.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_105(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.75)
  let term = { degree: 0, order: 0, cosine: 1.5, sine: 0.6 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_105(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2500.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_106(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.85)
  let term = { degree: 1, order: 1, cosine: 1.6, sine: 0.0 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_106(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2525.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_107(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.95)
  let term = { degree: 2, order: 2, cosine: 1.7, sine: 0.1 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_107(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2550.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_108(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=1.05)
  let term = { degree: 3, order: 3, cosine: 1.8, sine: 0.2 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_108(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2575.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_109(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.25)
  let term = { degree: 4, order: 0, cosine: 1.9, sine: 0.3 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_109(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2600.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_110(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.35)
  let term = { degree: 5, order: 1, cosine: 2.0, sine: 0.4 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_110(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2625.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_111(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.45)
  let term = { degree: 6, order: 2, cosine: 1.0, sine: 0.5 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_111(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2650.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_112(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.55)
  let term = { degree: 7, order: 3, cosine: 1.1, sine: 0.6 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_112(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2675.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_113(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.65)
  let term = { degree: 0, order: 0, cosine: 1.2, sine: 0.0 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_113(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2500.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_114(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.75)
  let term = { degree: 1, order: 1, cosine: 1.3, sine: 0.1 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_114(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2525.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_115(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.85)
  let term = { degree: 2, order: 2, cosine: 1.4, sine: 0.2 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_115(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2550.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_116(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.95)
  let term = { degree: 3, order: 3, cosine: 1.5, sine: 0.3 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_116(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2575.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_117(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=1.05)
  let term = { degree: 4, order: 0, cosine: 1.6, sine: 0.4 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_117(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2600.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_118(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.25)
  let term = { degree: 5, order: 1, cosine: 1.7, sine: 0.5 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_118(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2625.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_119(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.35)
  let term = { degree: 6, order: 2, cosine: 1.8, sine: 0.6 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_119(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2650.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_120(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.45)
  let term = { degree: 7, order: 3, cosine: 1.9, sine: 0.0 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_120(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2675.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_121(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.55)
  let term = { degree: 0, order: 0, cosine: 2.0, sine: 0.1 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_121(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2500.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_122(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.65)
  let term = { degree: 1, order: 1, cosine: 1.0, sine: 0.2 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_122(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2525.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_123(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.75)
  let term = { degree: 2, order: 2, cosine: 1.1, sine: 0.3 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_123(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2550.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_124(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.85)
  let term = { degree: 3, order: 3, cosine: 1.2, sine: 0.4 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_124(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2575.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_125(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.95)
  let term = { degree: 4, order: 0, cosine: 1.3, sine: 0.5 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_125(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2600.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_126(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=1.05)
  let term = { degree: 5, order: 1, cosine: 1.4, sine: 0.6 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_126(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2625.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_127(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.25)
  let term = { degree: 6, order: 2, cosine: 1.5, sine: 0.0 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_127(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2650.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_128(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.35)
  let term = { degree: 7, order: 3, cosine: 1.6, sine: 0.1 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_128(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2675.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_129(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.45)
  let term = { degree: 0, order: 0, cosine: 1.7, sine: 0.2 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_129(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2500.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_130(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.55)
  let term = { degree: 1, order: 1, cosine: 1.8, sine: 0.3 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_130(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2525.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_131(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.65)
  let term = { degree: 2, order: 2, cosine: 1.9, sine: 0.4 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_131(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2550.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_132(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.75)
  let term = { degree: 3, order: 3, cosine: 2.0, sine: 0.5 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_132(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2575.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_133(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.85)
  let term = { degree: 4, order: 0, cosine: 1.0, sine: 0.6 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_133(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2600.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_134(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.95)
  let term = { degree: 5, order: 1, cosine: 1.1, sine: 0.0 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_134(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2625.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_135(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=1.05)
  let term = { degree: 6, order: 2, cosine: 1.2, sine: 0.1 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_135(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2650.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_136(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.25)
  let term = { degree: 7, order: 3, cosine: 1.3, sine: 0.2 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_136(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2675.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_137(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.35)
  let term = { degree: 0, order: 0, cosine: 1.4, sine: 0.3 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_137(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2500.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_138(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.45)
  let term = { degree: 1, order: 1, cosine: 1.5, sine: 0.4 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_138(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2525.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_139(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.55)
  let term = { degree: 2, order: 2, cosine: 1.6, sine: 0.5 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_139(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2550.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_140(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.65)
  let term = { degree: 3, order: 3, cosine: 1.7, sine: 0.6 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_140(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2575.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_141(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.75)
  let term = { degree: 4, order: 0, cosine: 1.8, sine: 0.0 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_141(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2600.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_142(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.85)
  let term = { degree: 5, order: 1, cosine: 1.9, sine: 0.1 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_142(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2625.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_143(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.95)
  let term = { degree: 6, order: 2, cosine: 2.0, sine: 0.2 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_143(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2650.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_144(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=1.05)
  let term = { degree: 7, order: 3, cosine: 1.0, sine: 0.3 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_144(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2675.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_145(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.25)
  let term = { degree: 0, order: 0, cosine: 1.1, sine: 0.4 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_145(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2500.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_146(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.35)
  let term = { degree: 1, order: 1, cosine: 1.2, sine: 0.5 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_146(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2525.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_147(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.45)
  let term = { degree: 2, order: 2, cosine: 1.3, sine: 0.6 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_147(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2550.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_148(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.55)
  let term = { degree: 3, order: 3, cosine: 1.4, sine: 0.0 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_148(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2575.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_149(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.65)
  let term = { degree: 4, order: 0, cosine: 1.5, sine: 0.1 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_149(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2600.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_150(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.75)
  let term = { degree: 5, order: 1, cosine: 1.6, sine: 0.2 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_150(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2625.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_151(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.85)
  let term = { degree: 6, order: 2, cosine: 1.7, sine: 0.3 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_151(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2650.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_152(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.95)
  let term = { degree: 7, order: 3, cosine: 1.8, sine: 0.4 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_152(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2675.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_153(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=1.05)
  let term = { degree: 0, order: 0, cosine: 1.9, sine: 0.5 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_153(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2500.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_154(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.25)
  let term = { degree: 1, order: 1, cosine: 2.0, sine: 0.6 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_154(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2525.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_155(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.35)
  let term = { degree: 2, order: 2, cosine: 1.0, sine: 0.0 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_155(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2550.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_156(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.45)
  let term = { degree: 3, order: 3, cosine: 1.1, sine: 0.1 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_156(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2575.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_157(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.55)
  let term = { degree: 4, order: 0, cosine: 1.2, sine: 0.2 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_157(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2600.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_158(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.65)
  let term = { degree: 5, order: 1, cosine: 1.3, sine: 0.3 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_158(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2625.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_159(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.75)
  let term = { degree: 6, order: 2, cosine: 1.4, sine: 0.4 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_159(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2650.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_160(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.85)
  let term = { degree: 7, order: 3, cosine: 1.5, sine: 0.5 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_160(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2675.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_161(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.95)
  let term = { degree: 0, order: 0, cosine: 1.6, sine: 0.6 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_161(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2500.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_162(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=1.05)
  let term = { degree: 1, order: 1, cosine: 1.7, sine: 0.0 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_162(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2525.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_163(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.25)
  let term = { degree: 2, order: 2, cosine: 1.8, sine: 0.1 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_163(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2550.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_164(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.35)
  let term = { degree: 3, order: 3, cosine: 1.9, sine: 0.2 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_164(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2575.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_165(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.45)
  let term = { degree: 4, order: 0, cosine: 2.0, sine: 0.3 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_165(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2600.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_166(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.55)
  let term = { degree: 5, order: 1, cosine: 1.0, sine: 0.4 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_166(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2625.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_167(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.65)
  let term = { degree: 6, order: 2, cosine: 1.1, sine: 0.5 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_167(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2650.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_168(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.75)
  let term = { degree: 7, order: 3, cosine: 1.2, sine: 0.6 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_168(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2675.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_169(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.85)
  let term = { degree: 0, order: 0, cosine: 1.3, sine: 0.0 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_169(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2500.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_170(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.95)
  let term = { degree: 1, order: 1, cosine: 1.4, sine: 0.1 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_170(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2525.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_171(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=1.05)
  let term = { degree: 2, order: 2, cosine: 1.5, sine: 0.2 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_171(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2550.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_172(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.25)
  let term = { degree: 3, order: 3, cosine: 1.6, sine: 0.3 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_172(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2575.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_173(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.35)
  let term = { degree: 4, order: 0, cosine: 1.7, sine: 0.4 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_173(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2600.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_174(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.45)
  let term = { degree: 5, order: 1, cosine: 1.8, sine: 0.5 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_174(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2625.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_175(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.55)
  let term = { degree: 6, order: 2, cosine: 1.9, sine: 0.6 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_175(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2650.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_176(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.65)
  let term = { degree: 7, order: 3, cosine: 2.0, sine: 0.0 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_176(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2675.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_177(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.75)
  let term = { degree: 0, order: 0, cosine: 1.0, sine: 0.1 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_177(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2500.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_178(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.85)
  let term = { degree: 1, order: 1, cosine: 1.1, sine: 0.2 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_178(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2525.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_179(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.95)
  let term = { degree: 2, order: 2, cosine: 1.2, sine: 0.3 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_179(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2550.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_180(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=1.05)
  let term = { degree: 3, order: 3, cosine: 1.3, sine: 0.4 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_180(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2575.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_181(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.25)
  let term = { degree: 4, order: 0, cosine: 1.4, sine: 0.5 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_181(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2600.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_182(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.35)
  let term = { degree: 5, order: 1, cosine: 1.5, sine: 0.6 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_182(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2625.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_183(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.45)
  let term = { degree: 6, order: 2, cosine: 1.6, sine: 0.0 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_183(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2650.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_184(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.55)
  let term = { degree: 7, order: 3, cosine: 1.7, sine: 0.1 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_184(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2675.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_185(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.65)
  let term = { degree: 0, order: 0, cosine: 1.8, sine: 0.2 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_185(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2500.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_186(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.75)
  let term = { degree: 1, order: 1, cosine: 1.9, sine: 0.3 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_186(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2525.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_187(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.85)
  let term = { degree: 2, order: 2, cosine: 2.0, sine: 0.4 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_187(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2550.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_188(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.95)
  let term = { degree: 3, order: 3, cosine: 1.0, sine: 0.5 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_188(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2575.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_189(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=1.05)
  let term = { degree: 4, order: 0, cosine: 1.1, sine: 0.6 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_189(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2600.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_190(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.25)
  let term = { degree: 5, order: 1, cosine: 1.2, sine: 0.0 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_190(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2625.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_191(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.35)
  let term = { degree: 6, order: 2, cosine: 1.3, sine: 0.1 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_191(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2650.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_192(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.45)
  let term = { degree: 7, order: 3, cosine: 1.4, sine: 0.2 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_192(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2675.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_193(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.55)
  let term = { degree: 0, order: 0, cosine: 1.5, sine: 0.3 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_193(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2500.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_194(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.65)
  let term = { degree: 1, order: 1, cosine: 1.6, sine: 0.4 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_194(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2525.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_195(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.75)
  let term = { degree: 2, order: 2, cosine: 1.7, sine: 0.5 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_195(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2550.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_196(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.85)
  let term = { degree: 3, order: 3, cosine: 1.8, sine: 0.6 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_196(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2575.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_197(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.95)
  let term = { degree: 4, order: 0, cosine: 1.9, sine: 0.0 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_197(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2600.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_198(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=1.05)
  let term = { degree: 5, order: 1, cosine: 2.0, sine: 0.1 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_198(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2625.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_199(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.25)
  let term = { degree: 6, order: 2, cosine: 1.0, sine: 0.2 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_199(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2650.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_200(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.35)
  let term = { degree: 7, order: 3, cosine: 1.1, sine: 0.3 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_200(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2675.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_201(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.45)
  let term = { degree: 0, order: 0, cosine: 1.2, sine: 0.4 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_201(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2500.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_202(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.55)
  let term = { degree: 1, order: 1, cosine: 1.3, sine: 0.5 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_202(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2525.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_203(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.65)
  let term = { degree: 2, order: 2, cosine: 1.4, sine: 0.6 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_203(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2550.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_204(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.75)
  let term = { degree: 3, order: 3, cosine: 1.5, sine: 0.0 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_204(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2575.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_205(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.85)
  let term = { degree: 4, order: 0, cosine: 1.6, sine: 0.1 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_205(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2600.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_206(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.95)
  let term = { degree: 5, order: 1, cosine: 1.7, sine: 0.2 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_206(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2625.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_207(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=1.05)
  let term = { degree: 6, order: 2, cosine: 1.8, sine: 0.3 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_207(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2650.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_208(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.25)
  let term = { degree: 7, order: 3, cosine: 1.9, sine: 0.4 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_208(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2675.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_209(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.35)
  let term = { degree: 0, order: 0, cosine: 2.0, sine: 0.5 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_209(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2500.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_210(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.45)
  let term = { degree: 1, order: 1, cosine: 1.0, sine: 0.6 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_210(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2525.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_211(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.55)
  let term = { degree: 2, order: 2, cosine: 1.1, sine: 0.0 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_211(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2550.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_212(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.65)
  let term = { degree: 3, order: 3, cosine: 1.2, sine: 0.1 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_212(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2575.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_213(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.75)
  let term = { degree: 4, order: 0, cosine: 1.3, sine: 0.2 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_213(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2600.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_214(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.85)
  let term = { degree: 5, order: 1, cosine: 1.4, sine: 0.3 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_214(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2625.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_215(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.95)
  let term = { degree: 6, order: 2, cosine: 1.5, sine: 0.4 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_215(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2650.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_216(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=1.05)
  let term = { degree: 7, order: 3, cosine: 1.6, sine: 0.5 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_216(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2675.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_217(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.25)
  let term = { degree: 0, order: 0, cosine: 1.7, sine: 0.6 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_217(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2500.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_218(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.35)
  let term = { degree: 1, order: 1, cosine: 1.8, sine: 0.0 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_218(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2525.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_219(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.45)
  let term = { degree: 2, order: 2, cosine: 1.9, sine: 0.1 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_219(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2550.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_220(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.55)
  let term = { degree: 3, order: 3, cosine: 2.0, sine: 0.2 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_220(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2575.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_221(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.65)
  let term = { degree: 4, order: 0, cosine: 1.0, sine: 0.3 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_221(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2600.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_222(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.75)
  let term = { degree: 5, order: 1, cosine: 1.1, sine: 0.4 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_222(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2625.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_223(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.85)
  let term = { degree: 6, order: 2, cosine: 1.2, sine: 0.5 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_223(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2650.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_224(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.95)
  let term = { degree: 7, order: 3, cosine: 1.3, sine: 0.6 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_224(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2675.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_225(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=1.05)
  let term = { degree: 0, order: 0, cosine: 1.4, sine: 0.0 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_225(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2500.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_226(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.25)
  let term = { degree: 1, order: 1, cosine: 1.5, sine: 0.1 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_226(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2525.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_227(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.35)
  let term = { degree: 2, order: 2, cosine: 1.6, sine: 0.2 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_227(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2550.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_228(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.45)
  let term = { degree: 3, order: 3, cosine: 1.7, sine: 0.3 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_228(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2575.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_229(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.55)
  let term = { degree: 4, order: 0, cosine: 1.8, sine: 0.4 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_229(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2600.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_230(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.65)
  let term = { degree: 5, order: 1, cosine: 1.9, sine: 0.5 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_230(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2625.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_231(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.75)
  let term = { degree: 6, order: 2, cosine: 2.0, sine: 0.6 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_231(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2650.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_232(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.85)
  let term = { degree: 7, order: 3, cosine: 1.0, sine: 0.0 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_232(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2675.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_233(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.95)
  let term = { degree: 0, order: 0, cosine: 1.1, sine: 0.1 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_233(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2500.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_234(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=1.05)
  let term = { degree: 1, order: 1, cosine: 1.2, sine: 0.2 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_234(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2525.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_235(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.25)
  let term = { degree: 2, order: 2, cosine: 1.3, sine: 0.3 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_235(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2550.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_236(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.35)
  let term = { degree: 3, order: 3, cosine: 1.4, sine: 0.4 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_236(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2575.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_237(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.45)
  let term = { degree: 4, order: 0, cosine: 1.5, sine: 0.5 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_237(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2600.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_238(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.55)
  let term = { degree: 5, order: 1, cosine: 1.6, sine: 0.6 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_238(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2625.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_239(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.65)
  let term = { degree: 6, order: 2, cosine: 1.7, sine: 0.0 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_239(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2650.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_240(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.75)
  let term = { degree: 7, order: 3, cosine: 1.8, sine: 0.1 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_240(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2675.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_241(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.85)
  let term = { degree: 0, order: 0, cosine: 1.9, sine: 0.2 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_241(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2500.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_242(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.95)
  let term = { degree: 1, order: 1, cosine: 2.0, sine: 0.3 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_242(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2525.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_243(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=1.05)
  let term = { degree: 2, order: 2, cosine: 1.0, sine: 0.4 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_243(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2550.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_244(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.25)
  let term = { degree: 3, order: 3, cosine: 1.1, sine: 0.5 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_244(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2575.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_245(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.35)
  let term = { degree: 4, order: 0, cosine: 1.2, sine: 0.6 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_245(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2600.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_246(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.45)
  let term = { degree: 5, order: 1, cosine: 1.3, sine: 0.0 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_246(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2625.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_247(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.55)
  let term = { degree: 6, order: 2, cosine: 1.4, sine: 0.1 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_247(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2650.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_248(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.65)
  let term = { degree: 7, order: 3, cosine: 1.5, sine: 0.2 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_248(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2675.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_249(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.75)
  let term = { degree: 0, order: 0, cosine: 1.6, sine: 0.3 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_249(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2500.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_250(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.85)
  let term = { degree: 1, order: 1, cosine: 1.7, sine: 0.4 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_250(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2525.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_251(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.95)
  let term = { degree: 2, order: 2, cosine: 1.8, sine: 0.5 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_251(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2550.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_252(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=1.05)
  let term = { degree: 3, order: 3, cosine: 1.9, sine: 0.6 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_252(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2575.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_253(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.25)
  let term = { degree: 4, order: 0, cosine: 2.0, sine: 0.0 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_253(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2600.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_254(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.35)
  let term = { degree: 5, order: 1, cosine: 1.0, sine: 0.1 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_254(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2625.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_255(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.45)
  let term = { degree: 6, order: 2, cosine: 1.1, sine: 0.2 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_255(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2650.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_256(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.55)
  let term = { degree: 7, order: 3, cosine: 1.2, sine: 0.3 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_256(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2675.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_257(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.65)
  let term = { degree: 0, order: 0, cosine: 1.3, sine: 0.4 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_257(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2500.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_258(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.75)
  let term = { degree: 1, order: 1, cosine: 1.4, sine: 0.5 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_258(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2525.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_259(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.85)
  let term = { degree: 2, order: 2, cosine: 1.5, sine: 0.6 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_259(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2550.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_260(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.95)
  let term = { degree: 3, order: 3, cosine: 1.6, sine: 0.0 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_260(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2575.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_261(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=1.05)
  let term = { degree: 4, order: 0, cosine: 1.7, sine: 0.1 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_261(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2600.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_262(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.25)
  let term = { degree: 5, order: 1, cosine: 1.8, sine: 0.2 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_262(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2625.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_263(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.35)
  let term = { degree: 6, order: 2, cosine: 1.9, sine: 0.3 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_263(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2650.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_264(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.45)
  let term = { degree: 7, order: 3, cosine: 2.0, sine: 0.4 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_264(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2675.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_265(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.55)
  let term = { degree: 0, order: 0, cosine: 1.0, sine: 0.5 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_265(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2500.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_266(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.65)
  let term = { degree: 1, order: 1, cosine: 1.1, sine: 0.6 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_266(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2525.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_267(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.75)
  let term = { degree: 2, order: 2, cosine: 1.2, sine: 0.0 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_267(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2550.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_268(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.85)
  let term = { degree: 3, order: 3, cosine: 1.3, sine: 0.1 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_268(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2575.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_269(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.95)
  let term = { degree: 4, order: 0, cosine: 1.4, sine: 0.2 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_269(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2600.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_270(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=1.05)
  let term = { degree: 5, order: 1, cosine: 1.5, sine: 0.3 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_270(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2625.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_271(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.25)
  let term = { degree: 6, order: 2, cosine: 1.6, sine: 0.4 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_271(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2650.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_272(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.35)
  let term = { degree: 7, order: 3, cosine: 1.7, sine: 0.5 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_272(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2675.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_273(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.45)
  let term = { degree: 0, order: 0, cosine: 1.8, sine: 0.6 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_273(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2500.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_274(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.55)
  let term = { degree: 1, order: 1, cosine: 1.9, sine: 0.0 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_274(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2525.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_275(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.65)
  let term = { degree: 2, order: 2, cosine: 2.0, sine: 0.1 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_275(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2550.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_276(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.75)
  let term = { degree: 3, order: 3, cosine: 1.0, sine: 0.2 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_276(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2575.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_277(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.85)
  let term = { degree: 4, order: 0, cosine: 1.1, sine: 0.3 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_277(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2600.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_278(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.95)
  let term = { degree: 5, order: 1, cosine: 1.2, sine: 0.4 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_278(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2625.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_279(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=1.05)
  let term = { degree: 6, order: 2, cosine: 1.3, sine: 0.5 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_279(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2650.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_280(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.25)
  let term = { degree: 7, order: 3, cosine: 1.4, sine: 0.6 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_280(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2675.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_281(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.35)
  let term = { degree: 0, order: 0, cosine: 1.5, sine: 0.0 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_281(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2500.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_282(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.45)
  let term = { degree: 1, order: 1, cosine: 1.6, sine: 0.1 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_282(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2525.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_283(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.55)
  let term = { degree: 2, order: 2, cosine: 1.7, sine: 0.2 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_283(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2550.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_284(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.65)
  let term = { degree: 3, order: 3, cosine: 1.8, sine: 0.3 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_284(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2575.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_285(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.75)
  let term = { degree: 4, order: 0, cosine: 1.9, sine: 0.4 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_285(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2600.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_286(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.85)
  let term = { degree: 5, order: 1, cosine: 2.0, sine: 0.5 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_286(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2625.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_287(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.95)
  let term = { degree: 6, order: 2, cosine: 1.0, sine: 0.6 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_287(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2650.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_288(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=1.05)
  let term = { degree: 7, order: 3, cosine: 1.1, sine: 0.0 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_288(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2675.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_289(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.25)
  let term = { degree: 0, order: 0, cosine: 1.2, sine: 0.1 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_289(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2500.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_290(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.35)
  let term = { degree: 1, order: 1, cosine: 1.3, sine: 0.2 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_290(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2525.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_291(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.45)
  let term = { degree: 2, order: 2, cosine: 1.4, sine: 0.3 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_291(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2550.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_292(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.55)
  let term = { degree: 3, order: 3, cosine: 1.5, sine: 0.4 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_292(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2575.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_293(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.65)
  let term = { degree: 4, order: 0, cosine: 1.6, sine: 0.5 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_293(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2600.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_294(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.75)
  let term = { degree: 5, order: 1, cosine: 1.7, sine: 0.6 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_294(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2625.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_295(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.85)
  let term = { degree: 6, order: 2, cosine: 1.8, sine: 0.0 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_295(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2650.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_296(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.95)
  let term = { degree: 7, order: 3, cosine: 1.9, sine: 0.1 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_296(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2675.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_297(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=1.05)
  let term = { degree: 0, order: 0, cosine: 2.0, sine: 0.2 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_297(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2500.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_298(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.25)
  let term = { degree: 1, order: 1, cosine: 1.0, sine: 0.3 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_298(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2525.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_299(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.35)
  let term = { degree: 2, order: 2, cosine: 1.1, sine: 0.4 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_299(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2550.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}

///|
pub fn regional_harmonic_300(point : GeoPoint) -> Double {
  let model = empty_harmonic_model(scale=0.45)
  let term = { degree: 3, order: 3, cosine: 1.2, sine: 0.5 }
  evaluate_spherical_harmonic({ ..model, terms: [term] }, point)
}

///|
pub fn gravity_anomaly_reference_300(
  observed_mgal : Double,
  point : GeoPoint,
) -> Double {
  let density = 2575.0
  bouguer_anomaly_mgal(
    observed_mgal,
    point.lat,
    point.elevation_m,
    density_kg_m3=density,
  )
}
