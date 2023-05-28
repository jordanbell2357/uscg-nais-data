for i in {01..30}; do \
curl -O https://coast.noaa.gov/htdata/CMSP/AISDataHandler/2022/AIS_2022_06_${i}.zip; \
unzip AIS_2022_06_${i}.zip; \
rm AIS_2022_06_${i}.zip;
done

for i in {01..30}; do \
gsutil cp AIS_2022_06_${i}.csv gs://jordanbell2357marinecadastre/; \
rm AIS_2022_06_${i}.csv; \
done

bq mk --table --schema=MarineCadastre_schema.json uscg.nais

bq show --schema --format=prettyjson ais-data-385301:uscg.nais
bq show --schema --format=prettyjson ais-data-385301:uscg.nais | diff MarineCadastre_schema.json -

for i in {01..30}; do \
bq load \
--source_format=CSV \
--skip_leading_rows=1 \
--max_bad_records=200 \
--schema=MarineCadastre_schema.json \
uscg.nais \
gs://jordanbell2357marinecadastre/AIS_2022_06_${i}.csv; \
done

bq query --use_legacy_sql=false 'SELECT COUNT(*) FROM ais-data-385301.uscg.nais;'
# 249325885
