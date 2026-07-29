///|
pub fn Grid::is_valid(self : Grid) -> Bool {
  self.rows > 0 && self.cols > 0 && self.values.length() == self.rows * self.cols &&
  self.lat_step != 0.0 && self.lon_step != 0.0
}

///|
pub fn Grid::index(self : Grid, row : Int, col : Int) -> Int? {
  if row < 0 || col < 0 || row >= self.rows || col >= self.cols {
    None
  } else {
    Some(row * self.cols + col)
  }
}

///|
pub fn Grid::value_at(self : Grid, row : Int, col : Int) -> Double? {
  match self.index(row, col) {
    Some(i) => Some(self.values[i])
    None => None
  }
}

///|
fn grid_position(grid : Grid, point : GeoPoint) -> (Double, Double) {
  ((point.lat - grid.origin_lat) / grid.lat_step, (point.lon - grid.origin_lon) / grid.lon_step)
}

///|
pub fn Grid::sample_nearest(self : Grid, point : GeoPoint) -> Double? {
  let (r, c) = grid_position(self, point)
  let row = r.round().to_int()
  let col = c.round().to_int()
  self.value_at(row, col)
}

///|
pub fn Grid::sample_bilinear(self : Grid, point : GeoPoint) -> Double? {
  let (r, c) = grid_position(self, point)
  let r0 = r.floor().to_int()
  let c0 = c.floor().to_int()
  if r0 < 0 || c0 < 0 || r0 >= self.rows || c0 >= self.cols {
    None
  } else if r0 == self.rows - 1 || c0 == self.cols - 1 {
    self.value_at(r0, c0)
  } else {
  let r1 = r0 + 1
  let c1 = c0 + 1
  match (
    self.value_at(r0, c0),
    self.value_at(r0, c1),
    self.value_at(r1, c0),
    self.value_at(r1, c1),
  ) {
    (Some(v00), Some(v01), Some(v10), Some(v11)) => {
      let tr = r - Double::from_int(r0)
      let tc = c - Double::from_int(c0)
      let a = lerp(v00, v01, tc)
      let b = lerp(v10, v11, tc)
      Some(lerp(a, b, tr))
    }
    _ => None
  }
  }
}

///|
pub fn make_grid(
  origin_lat~ : Double,
  origin_lon~ : Double,
  lat_step~ : Double,
  lon_step~ : Double,
  rows~ : Int,
  cols~ : Int,
  values~ : Array[Double]
) -> Grid {
  { origin_lat, origin_lon, lat_step, lon_step, rows, cols, values }
}

///|
pub fn profile_between(grid : Grid, start : GeoPoint, finish : GeoPoint, samples : Int) -> Array[ProfileSample] {
  if samples <= 0 {
    []
  } else if samples == 1 {
    match grid.sample_bilinear(start) {
      Some(value) => [{ point: start, distance_m: 0.0, value }]
      None => []
    }
  } else {
    let total_distance = haversine_distance_m(start, finish)
    let out : Array[ProfileSample] = []
    for i in 0..<samples {
      let t = Double::from_int(i) / Double::from_int(samples - 1)
      let point = interpolate_point(start, finish, t)
      match grid.sample_bilinear(point) {
        Some(value) => out.push({ point, distance_m: total_distance * t, value })
        None => ()
      }
    }
    out
  }
}
