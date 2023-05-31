Office for Coastal Management, 2023: Nationwide Automatic Identification System 2022, <https://www.fisheries.noaa.gov/inport/item/67336>. GUID: gov.noaa.nmfs.inport:67336. Updated: February 6, 2023.

# curl

```bash
for i in {01..30}; do \
curl -O https://coast.noaa.gov/htdata/CMSP/AISDataHandler/2022/AIS_2022_06_${i}.zip; \
unzip AIS_2022_06_${i}.zip; \
rm AIS_2022_06_${i}.zip;
done
```

# gsutil cp

```bash
for i in {01..30}; do \
gsutil cp AIS_2022_06_${i}.csv gs://jordanbell2357marinecadastre/; \
rm AIS_2022_06_${i}.csv; \
done
```

# gsutil cat

```bash
gsutil cat gs://jordanbell2357marinecadastre/AIS_2022_06_01.csv | head
```

<pre>
MMSI,BaseDateTime,LAT,LON,SOG,COG,Heading,VesselName,IMO,CallSign,VesselType,Status,Length,Width,Draft,Cargo,TransceiverClass
367777550,2022-06-01T00:00:02,28.10198,-96.93931,0.0,360.0,511.0,HARRY LEE,,WDJ4420,52,0,0,0,0.0,52,A
367544180,2022-06-01T00:00:07,46.16795,-123.91430,0.0,342.5,511.0,JEANNE ARAIN,,WDG5186,30,15,18,,,30,A
368001000,2022-06-01T00:00:04,29.05437,-90.23010,7.9,180.0,168.0,GRANT CANDIES,IMO9481374,WDE5747,90,0,89,18,6.0,0,A
366772750,2022-06-01T00:00:04,48.52818,-122.80100,16.2,276.1,277.0,WSF YAKIMA,IMO8835360,WCD7863,60,0,116,22,5.5,60,A
368102480,2022-06-01T00:00:03,32.77822,-79.95351,0.0,360.0,511.0,CHARLESTON PRINCESS,,WDK9315,69,0,69,19,2.2,69,A
366972280,2022-06-01T00:00:02,29.74435,-95.10025,0.0,247.9,511.0,JOEY DEVALL,,WYB7063,31,0,18,7,,31,A
367344920,2022-06-01T00:00:00,30.28591,-88.74167,6.5,271.0,272.0,JACK BINION,,WDF2412,31,12,24,9,,57,A
367305040,2022-06-01T00:00:01,41.37956,-71.51142,0.0,226.3,305.0,BLOCK ISLAND,IMO8662763,WCX6756,60,0,57,11,,60,A
368091590,2022-06-01T00:00:01,25.76444,-80.14482,0.0,360.0,285.0,EAGLE_II,,WDK8178,60,0,0,0,0.0,60,A
</pre>

# Schema

[Specifying a schema](https://cloud.google.com/bigquery/docs/schemas)

`MarineCadastre_schema.json`

```json
[
  {
    "description": "Maritime Mobile Service Identity value",
    "mode": "REQUIRED",
    "name": "MMSI",
    "type": "STRING"
  },
  {
    "description": "Full UTC date and time",
    "mode": "REQUIRED",
    "name": "BaseDateTime",
    "type": "TIMESTAMP"
  },
  {
    "description": "decimal degrees. Latitude",
    "mode": "REQUIRED",
    "name": "LAT",
    "type": "FLOAT"
  },
  {
    "description": "decimal degrees. Longitude",
    "mode": "REQUIRED",
    "name": "LON",
    "type": "FLOAT"
  },
  {
    "description": "knots. Speed Over Ground",
    "mode": "REQUIRED",
    "name": "SOG",
    "type": "FLOAT"
  },
  {
    "description": "degrees. Course Over Ground",
    "mode": "REQUIRED",
    "name": "COG",
    "type": "FLOAT"
  },
  {
    "description": "degrees. True heading angle",
    "mode": "REQUIRED",
    "name": "Heading",
    "type": "FLOAT"
  },
  {
    "description": "Name as shown on the station radio license",
    "mode": "NULLABLE",
    "name": "VesselName",
    "type": "STRING"
  },
  {
    "description": "International Maritime Organization Vessel number",
    "mode": "NULLABLE",
    "name": "IMO",
    "type": "STRING"
  },
  {
    "description": "Call sign as assigned by FCC",
    "mode": "NULLABLE",
    "name": "CallSign",
    "type": "STRING"
  },
  {
    "description": "Vessel type as defined in NAIS specifications",
    "mode": "NULLABLE",
    "name": "VesselType",
    "type": "STRING"
  },
  {
    "description": "Navigation status as defined by the COLREGS",
    "mode": "NULLABLE",
    "name": "Status",
    "type": "STRING"
  },
  {
    "description": "Length of vessel (see NAIS specifications)",
    "mode": "NULLABLE",
    "name": "Length",
    "type": "FLOAT"
  },
  {
    "description": "Width of vessel (see NAIS specifications)",
    "mode": "NULLABLE",
    "name": "Width",
    "type": "FLOAT"
  },
  {
    "description": "Draft depth of vessel (see NAIS specifications)",
    "mode": "NULLABLE",
    "name": "Draft",
    "type": "FLOAT"
  },
  {
    "description": "Cargo type (see NAIS specification and codes)",
    "mode": "NULLABLE",
    "name": "Cargo",
    "type": "STRING"
  },
  {
    "description": "Class of AIS transceiver",
    "mode": "REQUIRED",
    "name": "TransceiverClass",
    "type": "STRING"
  }
]
```
 
[bq command-line tool reference](https://cloud.google.com/bigquery/docs/reference/bq-cli-reference)

# bq mk

```bash
bq mk --table --schema=MarineCadastre_schema.json uscg.nais
```

# bq show

```bash
bq show --schema --format=prettyjson ais-data-385301:uscg.nais
```

```bash
bq show --schema --format=prettyjson ais-data-385301:uscg.nais | diff MarineCadastre_schema.json -
```

# bq load

```bash
for i in {01..30}; do \
bq load \
--source_format=CSV \
--skip_leading_rows=1 \
--max_bad_records=200 \
--schema=MarineCadastre_schema.json \
uscg.nais \
gs://jordanbell2357marinecadastre/AIS_2022_06_${i}.csv; \
done
```

`max_bad_records=200` is chosen because `max_bad_records=100` fails. (That is, at least one daily CSV file has have more than
100 records not fitting the schema `MarineCadastre_schema.json`, but there is no daily CSV file with more than 200 records not fitting the schema.)

## bq query

```bash
bq query --use_legacy_sql=false 'SELECT COUNT(*) FROM ais-data-385301.uscg.nais;'
```

<pre>249325885</pre>

<pre>249 million 325 thousand 885 messages</pre>

# pipe combination

## Two stage

```bash
for i in {06..10}; do \
curl -O https://coast.noaa.gov/htdata/CMSP/AISDataHandler/2022/AIS_2022_07_${i}.zip; \
unzip AIS_2022_07_${i}.zip; \
rm AIS_2022_07_${i}.zip; \
gsutil cp AIS_2022_07_${i}.csv gs://jordanbell2357marinecadastre/; \
rm AIS_2022_07_${i}.csv; \
done
```

```bash
for i in {06..10}; do \
bq load \
--source_format=CSV \
--skip_leading_rows=1 \
--max_bad_records=200 \
--schema=MarineCadastre_schema.json \
uscg.nais \
gs://jordanbell2357marinecadastre/AIS_2022_07_${i}.csv; \
gsutil rm gs://jordanbell2357marinecadastre/AIS_2022_07_${i}.csv; \
done
```

## One stage
```bash
for i in {11..12}; do \
curl -O https://coast.noaa.gov/htdata/CMSP/AISDataHandler/2022/AIS_2022_07_${i}.zip; \
unzip AIS_2022_07_${i}.zip; \
rm AIS_2022_07_${i}.zip; \
gsutil cp AIS_2022_07_${i}.csv gs://jordanbell2357marinecadastre/; \
rm AIS_2022_07_${i}.csv; \
bq load \
--source_format=CSV \
--skip_leading_rows=1 \
--max_bad_records=200 \
--schema=MarineCadastre_schema.json \
uscg.nais \
gs://jordanbell2357marinecadastre/AIS_2022_07_${i}.csv; \
gsutil rm gs://jordanbell2357marinecadastre/AIS_2022_07_${i}.csv; \
done
```

## One stage with parameters
```bash
y='2022'
m='07'
for d in {13..14}; do \
curl -O https://coast.noaa.gov/htdata/CMSP/AISDataHandler/${y}/AIS_${y}_${m}_${d}.zip; \
unzip AIS_${y}_${m}_${d}.zip; \
rm AIS_${y}_${m}_${d}.zip; \
gsutil cp AIS_${y}_${m}_${d}.csv gs://jordanbell2357marinecadastre/; \
rm AIS_${y}_${m}_${d}; \
bq load \
--source_format=CSV \
--skip_leading_rows=1 \
--max_bad_records=200 \
--schema=MarineCadastre_schema.json \
uscg.nais \
gs://jordanbell2357marinecadastre/AIS_${y}_${m}_${d}; \
gsutil rm gs://jordanbell2357marinecadastre/AIS_${y}_${m}_${d}.csv; \
done
```
