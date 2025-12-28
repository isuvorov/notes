# MongoDB

## Create DB

```mongodb
use db;
```

## Create User

```mongodb
use db;
db.createUser({
  "user": "user",
  "pwd": "password",
  "roles": ["readWrite", "dbOwner", "dbAdmin"]
})
```

## Crete Collection

```mongodb
db.createCollection("collectionName", )
```



## Backup & Restore
mon
### Install brew

```bash
brew tap mongodb/brew
brew install mongodb-database-tools
```


### DUMP (EXPORT DOWNLOAD!) in ~/db/dbname/*

```bash
mongodump \
  --host ds34456436.mongolab.com \
  -d dbname \
  --port 876867 \
  --username user \
  --password pass \
  --collection user \
  --collection order \
  --out ~/db
```

### RESTORE (IMPORT UPLOAD!) from ~/db/dbname/*

```bash
mongorestore --host localhost --port 21017 -d dbNewName ~/db/dbname
```
