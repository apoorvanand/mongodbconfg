## MongoDB Windows Service
``` 
sc.exe create MongoDB binPath= "\"C:\Program Files\MongoDB\Server\3.6\bin\mongod.exe\" --service --config=\"C:\Program Files\MongoDB\Server\3.6\mongod.cfg\"" DisplayName= "MongoDB" start= auto
```
## Stop Mongodb Service
```net stop MongoDB ```
## Delete Mongodb Service
```
sc.exe delete MongoDB
```
## MongoDB Backup
```
set "ts=%date:/=-%%time::=-%"
set "foldername=%ts: =_%"
echo %foldername%
mongodump -h <DBURI> -d <DB NAME> -u <USER> -p <PASS> -o F:\dbbackups\%foldername%
echo "DB Backup completed "
 ```  
## MongoDB Restore 
```mongorestore -h <DB URI> -d <DB NAME> -U <USER> -P <PASS> <input db directory> ```


## Import collection
``` mongorestore -h {DB_URI} -d {DB_NAME} -u <user> -p <password> <input .bson file> ```

## Export collection
``` mongodump -h {DB_URI} -d {DB_NAME} -c <collection> -u <user> -p <password> -o <output directory> ```
