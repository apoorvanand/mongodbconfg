set "ts=%date:/=-%%time::=-%"
set "foldername=%ts: =_%"
echo %foldername%

Binary
Import database
mongorestore -h {DB_URI} -d data -u <user> -p <password> <input db directory>
Export database
mongodump -h {DB_URI} -d data -u <user> -p <password> -o <output directory>
Import collection
mongorestore -h {DB_URI} -d data -u <user> -p <password> <input .bson file>
Export collection
mongodump -h {DB_URI} -d data -c <collection> -u <user> -p <password> -o <output directory>
JSON
Import collection
mongoimport -h {DB_URI} -d data -c <collection> -u <user> -p <password> --file <input file>
Export collection
mongoexport -h {DB_URI} -d data -c <collection> -u <user> -p <password> -o <output file>
CSV
Import collection
mongoimport -h {DB_URI} -d data -c <collection> -u <user> -p <password> --file <input .csv file> --type csv --headerline
Export collection
mongoexport -h {DB_URI} -d data -c <collection> -u <user> -p <password> -o <output .csv file> --csv -f <comma-separated list of field names>
