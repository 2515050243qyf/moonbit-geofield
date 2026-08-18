///|
pub fn Grid::extent(self : Grid) -> GridExtent {
  let last_lat = self.origin_lat +
    self.lat_step * Double::from_int(self.rows - 1)
  let last_lon = self.origin_lon +
    self.lon_step * Double::from_int(self.cols - 1)
  {
    min_lat: Double::min(self.origin_lat, last_lat),
    max_lat: Double::max(self.origin_lat, last_lat),
    min_lon: Double::min(self.origin_lon, last_lon),
    max_lon: Double::max(self.origin_lon, last_lon),
  }
}

///|
pub fn Grid::contains(self : Grid, point : GeoPoint) -> Bool {
  let e = self.extent()
  point.lat >= e.min_lat &&
  point.lat <= e.max_lat &&
  point.lon >= e.min_lon &&
  point.lon <= e.max_lon
}

///|
pub fn Grid::point_at(self : Grid, row : Int, col : Int) -> GeoPoint? {
  match self.index(row, col) {
    Some(_) =>
      Some({
        lat: self.origin_lat + self.lat_step * Double::from_int(row),
        lon: self.origin_lon + self.lon_step * Double::from_int(col),
        elevation_m: 0.0,
      })
    None => None
  }
}

///|
pub fn Grid::cell(self : Grid, row : Int, col : Int) -> GridCell? {
  match (self.point_at(row, col), self.value_at(row, col)) {
    (Some(point), Some(value)) => Some({ row, col, point, value })
    _ => None
  }
}

///|
pub fn Grid::cells(self : Grid) -> Array[GridCell] {
  let output : Array[GridCell] = []
  for row in 0..<self.rows {
    for col in 0..<self.cols {
      match self.cell(row, col) {
        Some(cell) => output.push(cell)
        None => ()
      }
    }
  }
  output
}

///|
pub fn Grid::map(self : Grid, transform : (Double) -> Double) -> Grid {
  let values : Array[Double] = []
  for value in self.values {
    values.push(transform(value))
  }
  { ..self, values, }
}

///|
pub fn Grid::map_cells(self : Grid, transform : (GridCell) -> Double) -> Grid {
  let values : Array[Double] = []
  for row in 0..<self.rows {
    for col in 0..<self.cols {
      match self.cell(row, col) {
        Some(cell) => values.push(transform(cell))
        None => values.push(0.0 / 0.0)
      }
    }
  }
  { ..self, values, }
}

///|
pub fn Grid::replace_missing(self : Grid, replacement : Double) -> Grid {
  self.map(fn(value) { if is_finite(value) { value } else { replacement } })
}

///|
pub fn Grid::row(self : Grid, row : Int) -> Array[Double] {
  let output : Array[Double] = []
  if row >= 0 && row < self.rows {
    for col in 0..<self.cols {
      match self.value_at(row, col) {
        Some(value) => output.push(value)
        None => ()
      }
    }
  }
  output
}

///|
pub fn Grid::column(self : Grid, col : Int) -> Array[Double] {
  let output : Array[Double] = []
  if col >= 0 && col < self.cols {
    for row in 0..<self.rows {
      match self.value_at(row, col) {
        Some(value) => output.push(value)
        None => ()
      }
    }
  }
  output
}

///|
pub fn Grid::summary(self : Grid) -> Summary {
  summary(self.values)
}

///|
pub fn Grid::nearest_cell(self : Grid, point : GeoPoint) -> GridCell? {
  let (r, c) = grid_position(self, point)
  self.cell(r.round().to_int(), c.round().to_int())
}

///|
pub fn Grid::window(
  self : Grid,
  row : Int,
  col : Int,
  radius : Int,
) -> Array[Double] {
  let output : Array[Double] = []
  for r in (row - radius)..<=(row + radius) {
    for c in (col - radius)..<=(col + radius) {
      match self.value_at(r, c) {
        Some(value) => output.push(value)
        None => ()
      }
    }
  }
  output
}

///|
pub fn Grid::focal_mean(self : Grid, radius : Int) -> Grid {
  self.map_cells(fn(cell) {
    summary(self.window(cell.row, cell.col, radius)).mean
  })
}

///|
pub fn Grid::focal_min(self : Grid, radius : Int) -> Grid {
  self.map_cells(fn(cell) {
    summary(self.window(cell.row, cell.col, radius)).minimum
  })
}

///|
pub fn Grid::focal_max(self : Grid, radius : Int) -> Grid {
  self.map_cells(fn(cell) {
    summary(self.window(cell.row, cell.col, radius)).maximum
  })
}

///|
pub fn Grid::transpose(self : Grid) -> Grid {
  let values : Array[Double] = []
  for col in 0..<self.cols {
    for row in 0..<self.rows {
      match self.value_at(row, col) {
        Some(value) => values.push(value)
        None => values.push(0.0 / 0.0)
      }
    }
  }
  {
    origin_lat: self.origin_lon,
    origin_lon: self.origin_lat,
    lat_step: self.lon_step,
    lon_step: self.lat_step,
    rows: self.cols,
    cols: self.rows,
    values,
  }
}

///|
pub fn Grid::scale(self : Grid, factor : Double) -> Grid {
  self.map(fn(value) { value * factor })
}

///|
pub fn Grid::offset(self : Grid, amount : Double) -> Grid {
  self.map(fn(value) { value + amount })
}

///|
pub fn Grid::difference(self : Grid, other : Grid) -> Grid? {
  if self.rows != other.rows || self.cols != other.cols {
    None
  } else {
    let values : Array[Double] = []
    for i in 0..<self.values.length() {
      values.push(self.values[i] - other.values[i])
    }
    Some({ ..self, values, })
  }
}

///|
pub fn Grid::combine(
  self : Grid,
  other : Grid,
  operation : (Double, Double) -> Double,
) -> Grid? {
  if self.rows != other.rows || self.cols != other.cols {
    None
  } else {
    let values : Array[Double] = []
    for i in 0..<self.values.length() {
      values.push(operation(self.values[i], other.values[i]))
    }
    Some({ ..self, values, })
  }
}

///|
pub fn Grid::min_max(self : Grid) -> (Double, Double) {
  let s = self.summary()
  (s.minimum, s.maximum)
}

///|
pub fn Grid::normalize(self : Grid) -> Grid {
  let (minimum, maximum) = self.min_max()
  if maximum == minimum {
    self.map(fn(_) { 0.0 })
  } else {
    self.map(fn(value) { (value - minimum) / (maximum - minimum) })
  }
}

///|
pub fn Grid::threshold(
  self : Grid,
  level : Double,
  low : Double,
  high : Double,
) -> Grid {
  self.map(fn(value) { if value < level { low } else { high } })
}

///|
pub fn Grid::count_where(self : Grid, predicate : (Double) -> Bool) -> Int {
  let mut count = 0
  for value in self.values {
    if predicate(value) {
      count += 1
    }
  }
  count
}

///|
pub fn Grid::mean_absolute(self : Grid) -> Double {
  let values : Array[Double] = []
  for value in self.values {
    values.push(value.abs())
  }
  summary(values).mean
}

///|
pub fn Grid::integral(self : Grid) -> Double {
  let area = degrees_latitude_to_metres(self.lat_step).abs() *
    degrees_longitude_to_metres(self.lon_step, self.origin_lat).abs()
  self.summary().sum * area
}
