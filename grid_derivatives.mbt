///|
fn safe_difference(a : Double, b : Double, distance : Double) -> Double {
  if distance == 0.0 {
    0.0
  } else {
    (a - b) / distance
  }
}

///|
pub fn Grid::gradient_at(self : Grid, row : Int, col : Int) -> Gradient? {
  match self.value_at(row, col) {
    None => None
    Some(center) => {
      let north = match self.value_at(row - 1, col) {
        Some(value) => value
        None => center
      }
      let south = match self.value_at(row + 1, col) {
        Some(value) => value
        None => center
      }
      let west = match self.value_at(row, col - 1) {
        Some(value) => value
        None => center
      }
      let east = match self.value_at(row, col + 1) {
        Some(value) => value
        None => center
      }
      let north_rate = safe_difference(south, north, 2.0 * self.lat_step)
      let east_rate = safe_difference(east, west, 2.0 * self.lon_step)
      let magnitude = (north_rate * north_rate + east_rate * east_rate).sqrt()
      let azimuth = rad_to_deg(@math.atan2(east_rate, north_rate))
      Some({
        north_per_degree: north_rate,
        east_per_degree: east_rate,
        magnitude,
        azimuth_deg: normalize_longitude(azimuth),
      })
    }
  }
}

///|
pub fn Grid::gradient(self : Grid) -> Grid {
  self.map_cells(fn(cell) {
    match self.gradient_at(cell.row, cell.col) {
      Some(value) => value.magnitude
      None => 0.0
    }
  })
}

///|
pub fn Grid::slope_degrees(self : Grid, row : Int, col : Int) -> Double? {
  match self.gradient_at(row, col) {
    Some(value) => Some(rad_to_deg(@math.atan(value.magnitude)))
    None => None
  }
}

///|
pub fn Grid::aspect_degrees(self : Grid, row : Int, col : Int) -> Double? {
  match self.gradient_at(row, col) {
    Some(value) => Some(value.azimuth_deg)
    None => None
  }
}

///|
pub fn Grid::laplacian_at(self : Grid, row : Int, col : Int) -> Double? {
  match self.value_at(row, col) {
    None => None
    Some(center) => {
      let north = match self.value_at(row - 1, col) {
        Some(v) => v
        None => center
      }
      let south = match self.value_at(row + 1, col) {
        Some(v) => v
        None => center
      }
      let west = match self.value_at(row, col - 1) {
        Some(v) => v
        None => center
      }
      let east = match self.value_at(row, col + 1) {
        Some(v) => v
        None => center
      }
      Some(north + south + west + east - 4.0 * center)
    }
  }
}

///|
pub fn Grid::laplacian(self : Grid) -> Grid {
  self.map_cells(fn(cell) {
    match self.laplacian_at(cell.row, cell.col) {
      Some(value) => value
      None => 0.0
    }
  })
}

///|
pub fn Grid::hillshade(self : Grid, illumination_deg : Double) -> Grid {
  self.map_cells(fn(cell) {
    match self.gradient_at(cell.row, cell.col) {
      None => 0.0
      Some(gradient) => {
        let difference = deg_to_rad(illumination_deg - gradient.azimuth_deg)
        @math.cos(deg_to_rad(45.0)) * @math.cos(deg_to_rad(45.0)) +
        @math.sin(deg_to_rad(45.0)) *
        @math.sin(deg_to_rad(45.0)) *
        @math.cos(difference)
      }
    }
  })
}
