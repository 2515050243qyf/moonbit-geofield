///|
fn parse_double_cell(cell : StringView) -> Double raise {
  @strconv.from_str(cell.trim())
}

///|
fn escape_json_string(s : String) -> String {
  s.replace_all(old="\\", new="\\\\").replace_all(old="\"", new="\\\"")
}

///|
/// Parse CSV rows with columns: latitude, longitude, elevation_m, value, name.
/// The first row may be a header.
pub fn parse_field_samples_csv(csv : String) -> Array[FieldSample] raise {
  let samples : Array[FieldSample] = []
  for line in csv.split("\n") {
    let row = line.trim()
    if row.is_empty() || row.has_prefix("lat") || row.has_prefix("latitude") {
      ()
    } else {
      let cells = row.split(",").to_array()
      if cells.length() >= 4 {
        let lat = parse_double_cell(cells[0])
        let lon = parse_double_cell(cells[1])
        let elevation_m = parse_double_cell(cells[2])
        let value = parse_double_cell(cells[3])
        let name = if cells.length() >= 5 { cells[4].trim().to_owned() } else { "sample" }
        samples.push({ point: { lat, lon, elevation_m }, value, name })
      }
    }
  }
  samples
}

///|
pub fn samples_to_csv(samples : ArrayView[FieldSample]) -> String {
  let rows : Array[String] = ["lat,lon,elevation_m,value,name"]
  for sample in samples {
    rows.push(
      "\{sample.point.lat},\{sample.point.lon},\{sample.point.elevation_m},\{sample.value},\{sample.name}",
    )
  }
  rows.join("\n")
}

///|
pub fn samples_to_geojson(samples : ArrayView[FieldSample]) -> String {
  let parts : Array[String] = []
  for sample in samples {
    let feature = (
      "{\"type\":\"Feature\",\"geometry\":{\"type\":\"Point\",\"coordinates\":[" +
      "\{sample.point.lon},\{sample.point.lat},\{sample.point.elevation_m}" +
      "]},\"properties\":{\"name\":\"" +
      escape_json_string(sample.name) +
      "\",\"value\":" +
      "\{sample.value}" +
      "}}"
    )
    parts.push(feature)
  }
  "{\"type\":\"FeatureCollection\",\"features\":[\{parts.join(",")}]}"
}

///|
pub fn profile_to_csv(profile : ArrayView[ProfileSample]) -> String {
  let rows : Array[String] = ["distance_m,lat,lon,elevation_m,value"]
  for sample in profile {
    rows.push(
      "\{sample.distance_m},\{sample.point.lat},\{sample.point.lon},\{sample.point.elevation_m},\{sample.value}",
    )
  }
  rows.join("\n")
}
