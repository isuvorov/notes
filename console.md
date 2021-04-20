# Шпаргалка по линуксу, утилитам, консоли, базам
-------

## Linux

### Базовые команды

```
ls 
ls -la
cd 
whoami
cp
cp -R
mkdir -p 
```



### Увеличиваем своп, [подробности](https://www.digitalocean.com/community/tutorials/how-to-add-swap-on-ubuntu-14-04)
```
sudo fallocate -l 4G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
```

### добавляем юзера
```bash
useradd -s /bin/bash -d /home/testuser testuser
passwd testuser
mkdir /home/testuser
chown testuser:testuser /home/testuser
```

#### Не помню
```
useradd -g primary_grp -G admin -s /bin/shell -p xxxx -d /home/user
```

#### concat all files in one
https://stackoverflow.com/questions/18006581/how-to-append-contents-of-multiple-files-into-one-file


## Docker

### Чистим докер [не актуально]
щас уже все кажется автоматизировали в докере
```
docker rm `docker ps -a | grep Exited | awk '{print $1 }'`
docker rmi `docker images -aq`
```

## Linux utils

### быстро переименовать / добавить префикс
```bash
rename s/'^'/'MyPrefix'/ *
```

### архивируем директорию
```bash
tar -czvf bikemol.tar.gz opencart.hahabr.ru
```

### а это еще круче: архивируем удаленную директорию, с максимальным сжатием, и выкачиваем файл по ssh
```bash
ssh root@server.ru 'cd /var/www && tar -cf - anfeya | gzip -9' > anfeya_2014_04_19.tgz
```
### логинется по ssh и скачивает файл [Устарело]
```bash
scp root@vknote.ru:landingov.sql ~/landingov.sql
```
### залить директорию на сервер [Устарело]
```bash
scp -r mydirectory username@example.com:destdir
```


# Rsync

[More info](https://linux.die.net/man/1/rsync)


important params
```
-a, --archive               archive mode; equals -rlptgoD (no -H,-A,-X)
-v, --verbose               increase verbosity
-p, --perms                 preserve permissions
-A, --acls                  preserve ACLs (implies -p)
-E, --executability         preserve executability
    --rsync-path=PROGRAM    specify the rsync to run on remote machine
    --del                   an alias for --delete-during
    --delete-after          receiver deletes after transfer, not before
    --exclude=PATTERN       exclude files matching PATTERN
    --exclude-from=FILE     read exclude patterns from FILE
    --progress              show progress during transfer
-z, --compress              compress file data during the transfer
-P                          same as --partial --progress
-n, --dry-run               perform a trial run with no changes made
```

### Examples

```bash
rsync --rsync-path="sudo rsync" 
```

```bash
rsync -aE --delete-after --perms --progress
```

```bash
rsync -apPh --del ../lskjs-bot-kit/packages/app/src/ src-bot-kit/
```

### залить все файлы в удаленную папку
```bash
rsync -az * quizly.ru:/var/www/oltri.mgbeta.ru
```

### download folder
```bash
rsync -chavzP mobi@mobi.faberlic.com:/home/mobi/dump2/faberlic_2015_09_18 ./dump
```

### tail подписаться на измнения файла
```bash
tail -f  /var/log/apache2/error.log
```


## WGET -- скачиваем всё из интеренета

```bash
wget "http://shell.skillweb.ru/json/update.php" -O "save/update.html"
wget "http://shell.skillweb.ru/json/" -O "save/index.html"
```

## глубокое скачивание

```bash
wget --no-parent --timestamping --convert-links --page-requisites --no-host-directories -erobots=off https://trafficstars.com/
wget --no-parent --timestamping --convert-links --page-requisites --no-host-directories -erobots=off http://landing001.akropol-st.ru/
wget --no-parent --timestamping --convert-links --page-requisites --no-host-directories -erobots=off http://demo.oscodo.com/obsession-v1.1/html-video-bg/dark-demo-two-video-transparent-pattern.html
wget --no-parent --timestamping --convert-links --page-requisites --no-host-directories -erobots=off http://landing001.akropol-st.ru/
wget --no-parent --timestamping --convert-links --page-requisites --no-host-directories -erobots=off --adjust-extension http://landing001.akropol-st.ru/
wget -mpck --no-parent --user-agent="" -e robots=off --wait 1  http://web.archive.org/web/20141216214338/http://biz-accord.ru/
wget --no-parent --timestamping --convert-links --page-requisites --no-host-directories -erobots=off --adjust-extension  --mirror --domains=staticweb.archive.org,web.archive.org http://web.archive.org/web/20141216214338/http://biz-accord.ru/
```

## PHP

### Устанваливаем композер глобально
```
curl -sS https://getcomposer.org/installer | php 
mv composer.phar /usr/local/bin/composer
```
## PostgreSQL

```
CREATE DATABASE "my-db";
CREATE USER "my-user" WITH ENCRYPTED PASSWORD 'mypass';
GRANT ALL PRIVILEGES ON DATABASE "my-db" TO "my-user";
```

```
psql -U username dbname < dbexport.pgsql
psql postgres://my-user:my-password@host/my-db <  dbexport.pgsql
```

CREATE DATABASE "buzzguru-billing";
CREATE USER "buzzguru-billing" WITH ENCRYPTED PASSWORD 'tPfo49riJvxasGrYTfhEjA';
GRANT ALL PRIVILEGES ON DATABASE "buzzguru-billing" TO "buzzguru-billing";


## MySQL

### создаем базу данных и пользователя mysql
```
CREATE USER 'newuser'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON * . * TO 'newuser'@'localhost';
FLUSH PRIVILEGES;
```

### дампим базу в файл
```bash
mysqldump -p -u it-interview it-interview > it-interview_`date +%d_%b_%Y`.sql
```

### восстанавливаем базу из файла
```bash
mysql -uit-interview -pASdasdasdas it-interview < it-interview_12_02_2014.sql
```

### DUMP (EXPORT DOWNLOAD!) in ~/db/dbname/*
mongodump --host ds34456436.mongolab.com -d dbname --port 876867 --username user --password pass --collection user --collection order --out ~/db
```
```

### RESTORE (IMPORT UPLOAD!) from ~/db/dbname/*
```bash
mongorestore --host localhost --port 21017 -d dbNewName ~/db/dbname
```
