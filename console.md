# Шпаргалка по линуксу, утилитам, консоли, базам
-------

## Linux

### Увеличиваем своп, [подробности](https://www.digitalocean.com/community/tutorials/how-to-add-swap-on-ubuntu-14-04)
```
sudo fallocate -l 4G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
```

### добавляем юзера
```sh
useradd -s /bin/bash -d /home/testuser testuser
passwd testuser
mkdir /home/testuser
chown testuser:testuser /home/testuser
```

#### Не помню
```
useradd -g primary_grp -G admin -s /bin/shell -p xxxx -d /home/user
```


## Docker

### Чистим докер [не актуально]
щас уже все кажется автоматизировали в докере
```
docker rm `docker ps -a | grep Exited | awk '{print $1 }'`
docker rmi `docker images -aq`
```


## Linux utils

### быстро переименовать / добавить префикс
```sh
rename s/'^'/'MyPrefix'/ *
```

### архивируем директорию
```sh
tar -czvf bikemol.tar.gz opencart.hahabr.ru
```

### а это еще круче: архивируем удаленную директорию, с максимальным сжатием, и выкачиваем файл по ssh
```sh
ssh root@server.ru 'cd /var/www && tar -cf - anfeya | gzip -9' > anfeya_2014_04_19.tgz
```
### логинется по ssh и скачивает файл [Устарело]
```sh
scp root@vknote.ru:landingov.sql ~/landingov.sql
```
### залить директорию на сервер [Устарело]
```sh
scp -r mydirectory username@example.com:destdir
```


### залить все файлы в удаленную папку
```sh
rsync -az * quizly.ru:/var/www/oltri.mgbeta.ru
```

### download folder
```sh
rsync -chavzP mobi@mobi.faberlic.com:/home/mobi/dump2/faberlic_2015_09_18 ./dump
```

### tail подписаться на измнения файла
```sh
tail -f  /var/log/apache2/error.log
```


## WGET -- скачиваем всё из интеренета

```sh
wget "http://shell.skillweb.ru/json/update.php" -O "save/update.html"
wget "http://shell.skillweb.ru/json/" -O "save/index.html"
```

## глубокое скачивание

```sh
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

## MySQL

### создаем базу данных и пользователя mysql
```
CREATE USER 'newuser'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON * . * TO 'newuser'@'localhost';
FLUSH PRIVILEGES;
```

### дампим базу в файл
```sh
mysqldump -p -u it-interview it-interview > it-interview_`date +%d_%b_%Y`.sql
```
### восстанавливаем базу из файла
```sh
mysql -uit-interview -pASdasdasdas it-interview < it-interview_12_02_2014.sql
```

```sh
mongodump -d database123 --out ./dump2
```

### RESTORE (IMPORT UPLOAD!) from ~/db/dbname/*
```sh
mongorestore --host localhost --port 21017 -d dbNewName ~/db/dbname
```

### DUMP (EXPORT DOWNLOAD!) in ~/db/dbname/*
```sh
mongodump --host ds34456436.mongolab.com -d dbname --port 876867 --username user --password pass --out ~/db
```
