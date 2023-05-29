bq mk --table --schema=UpdatedPub150_schema.json nga.wpi

bq load --source_format=CSV --skip_leading_rows=1 --schema=UpdatedPub150_schema.json nga.wpi gs://jordanbell2357marinecadastre/UpdatedPub150.csv
