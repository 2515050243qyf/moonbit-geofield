///|
fn main {
  let size = 10000
  let values : Array[Double] = []
  for i in 0..<size {
    values.push(Double::from_int(i % 97))
  }
  let start = @env.now()
  let filtered = @geofield.moving_average(values, 3)
  let normalized = @geofield.normalize_values(filtered)
  let checksum = @geofield.summary(normalized).sum
  let elapsed = @env.now() - start
  println("workload_values=\{size}")
  println("elapsed_ms=\{elapsed}")
  println("checksum=\{checksum}")
}
