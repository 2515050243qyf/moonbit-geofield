# moonbit-geofield

MoonBit 地球物理场计算库，面向重力、磁场、规则网格和剖面数据处理。

这个项目的目标是提供一组轻量、可测试、可扩展的基础 API，便于 MoonBit 项目处理常见地学场数据：正常重力、重力异常、磁偏角近似、球谐模型接口、规则网格插值、剖面计算，以及 CSV/GeoJSON 输入输出。

## Features

- WGS84/Somigliana 正常重力，单位 mGal
- 自由空气异常与简单 Bouguer 异常
- 中心偶极近似的磁偏角、磁倾角和磁场分量换算
- 紧凑球谐系数模型与求值接口
- 规则经纬网最近邻、双线性插值
- 两点剖面采样
- `FieldSample` 的 CSV 解析、CSV/GeoJSON 导出
- `cmd/main` 示例 CLI

## Install

```bash
moon add 2515050243qyf/moonbit-geofield
```

本仓库本地运行：

```bash
moon check --deny-warn
moon test
moon run cmd/main
```

## Example

```mbt check
test {
  let station : GeoPoint = { lat: 32.0, lon: 118.0, elevation_m: 25.0 }
  let gamma = normal_gravity_mgal(station.lat)
  assert_true(gamma > 979000.0 && gamma < 980000.0)

  let grid = make_grid(
    origin_lat=32.0,
    origin_lon=118.0,
    lat_step=0.5,
    lon_step=0.5,
    rows=2,
    cols=2,
    values=[10.0, 12.0, 18.0, 22.0],
  )
  let query : GeoPoint = { lat: 32.25, lon: 118.25, elevation_m: 0.0 }
  let value = grid.sample_bilinear(query)
  assert_true(value is Some(15.5))
}
```

## API Sketch

核心类型：

- `GeoPoint`
- `FieldSample`
- `Grid`
- `ProfileSample`
- `HarmonicTerm`
- `SphericalHarmonicModel`

常用函数：

- `normal_gravity_mgal`
- `free_air_anomaly_mgal`
- `bouguer_anomaly_mgal`
- `magnetic_declination_deg`
- `evaluate_spherical_harmonic`
- `Grid::sample_nearest`
- `Grid::sample_bilinear`
- `profile_between`
- `parse_field_samples_csv`
- `samples_to_geojson`

## Data And Formula Sources

项目当前实现采用公开地球物理教材和工程中常见的基础公式：

- WGS84/Somigliana 正常重力公式
- 自由空气改正常用系数 `0.3086 mGal/m`
- Bouguer 板近似常用系数 `0.00004193 * density * height`
- 磁偏角使用中心偶极近似，仅用于示例、可视化和粗略估计

本项目不内置 EGM、WMM、IGRF 等大型权威系数表。`SphericalHarmonicModel` 设计为后续接入真实系数文件的稳定接口。

## Roadmap

- 支持更多网格格式和缺测值策略
- 增加 EGM/WMM/IGRF 系数加载器
- 增加地形场派生指标
- 增加更完整的 GeoJSON 解析
- 提供更多命令行子命令

## License

Apache-2.0
