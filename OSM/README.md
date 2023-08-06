# OSM

https://nominatim.openstreetmap.org/ui/search.html?q=port+of+los+angeles


# Overpass Turbo

[Overpass Turbo](https://overpass-turbo.eu/)

```
[out:json];
rel(14285493);
out meta;
>;
out skel qt;
```

```
[out:json][timeout:60];
// gather results
(
  // query part for: “industrial=port”
  node["industrial"="port"](18.7763,-179.1489,71.5388,-66.934570);
  way["industrial"="port"](18.7763,-179.1489,71.5388,-66.934570);
  relation["industrial"="port"](18.7763,-179.1489,71.5388,-66.934570);
);
// print results
out geom;
>;
out skel qt;
```

```bash
ogr2ogr -where "OGR_GEOMETRY='Point'" us_ports_points.shp us_region_industrial_port.geojson
ogr2ogr -where "OGR_GEOMETRY='LineString'" us_ports_linestrings.shp us_region_industrial_port.geojson
ogr2ogr -where "OGR_GEOMETRY='Polygon'" us_ports_polygons.shp us_region_industrial_port.geojson
```