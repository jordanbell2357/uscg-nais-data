y='2022'
m='06'
for d in {01..30}; do \
curl -O https://coast.noaa.gov/htdata/CMSP/AISDataHandler/${y}/AIS_${y}_${m}_${d}.zip; \
unzip AIS_${y}_${m}_${d}.zip; \
rm AIS_${y}_${m}_${d}.zip; \
gsutil cp AIS_${y}_${m}_${d}.csv gs://jordanbell2357marinecadastre/; \
rm AIS_${y}_${m}_${d}.csv; \
bq load \
--source_format=CSV \
--skip_leading_rows=1 \
--max_bad_records=200 \
--schema=MarineCadastre_CSV_schema.json \
uscg.nais \
gs://jordanbell2357marinecadastre/AIS_${y}_${m}_${d}.csv; \
gsutil rm gs://jordanbell2357marinecadastre/AIS_${y}_${m}_${d}.csv; \
done

y='2022'
for m in {06..07}; do \
for d in {01..30}; do \
curl -O https://coast.noaa.gov/htdata/CMSP/AISDataHandler/${y}/AIS_${y}_${m}_${d}.zip; \
unzip AIS_${y}_${m}_${d}.zip; \
rm AIS_${y}_${m}_${d}.zip; \
gsutil cp AIS_${y}_${m}_${d}.csv gs://jordanbell2357marinecadastre/; \
rm AIS_${y}_${m}_${d}.csv; \
bq load \
--source_format=CSV \
--skip_leading_rows=1 \
--max_bad_records=200 \
--schema=MarineCadastre_CSV_schema.json \
uscg.nais \
gs://jordanbell2357marinecadastre/AIS_${y}_${m}_${d}.csv; \
gsutil rm gs://jordanbell2357marinecadastre/AIS_${y}_${m}_${d}.csv; \
done; \
done

y='2022'
for m in {06..07}; do
  for d in {01..30}; do
    curl -O https://coast.noaa.gov/htdata/CMSP/AISDataHandler/${y}/AIS_${y}_${m}_${d}.zip
    unzip AIS_${y}_${m}_${d}.zip
    rm AIS_${y}_${m}_${d}.zip
    gsutil cp AIS_${y}_${m}_${d}.csv gs://jordanbell2357marinecadastre/
    rm AIS_${y}_${m}_${d}.csv
    bq load \
      --source_format=CSV \
      --skip_leading_rows=1 \
      --max_bad_records=200 \
      --schema=MarineCadastre_CSV_schema.json \
      uscg.nais \
      gs://jordanbell2357marinecadastre/AIS_${y}_${m}_${d}.csv
    gsutil rm gs://jordanbell2357marinecadastre/AIS_${y}_${m}_${d}.csv
  done
done
