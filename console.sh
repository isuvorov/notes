
mysqldump -p -u it-interview it-interview > it-interview_`date +%d_%b_%Y`.sql  # дампим базу в файл

mysql -uit-interview -pASdasdasdas it-interview < it-interview_12_02_2014.sql  # восстанавливаем базу из файла

mongodump -d database123 --out ./dump2




#быстро переименовать / добавить префикс
rename s/'^'/'MyPrefix'/ *

#создает папку .ssh если еще не создана
#закидываем свой публичный ключ на удаленный комп, для того, чтобы потом коннектиться к нему по ssh без пароля
cat ~/.ssh/id_rsa.pub | ssh root@192.168.7.18 'mkdir -p -v ~/.ssh; cat >> ~/.ssh/authorized_keys'
#альтернатива
ssh-copy-id root@192.168.7.18

#архивируем директорию
tar -czvf bikemol.tar.gz opencart.hahabr.ru


ssh-keygen 

#а это еще круче: архивируем удаленную директорию, с максимальным сжатием, и выкачиваем файл по ssh
ssh root@server.ru 'cd /var/www && tar -cf - anfeya | gzip -9' > anfeya_2014_04_19.tgz


ssh root@server.ru 'cd /var/www && tar -cf - anfeya | gzip -9' > anfeya_2014_04_19.tgz

#логинется по ssh и скачивает файл
scp root@vknote.ru:landingov.sql ~/landingov.sql


#залить директорию на сервер
scp -r mydirectory username@example.com:destdir


#tail 
tail -f  /var/log/apache2/error.log


#добавляем юзера
useradd -s /bin/bash -d /home/isuvorov isuvorov
passwd isuvorov
mkdir /home/isuvorov
chown isuvorov:isuvorov /home/isuvorov



useradd -g primary_grp -G admin -s /bin/shell -p xxxx -d /home/user


#Устанваливаем композер глобально
curl -sS https://getcomposer.org/installer | php 
mv composer.phar /usr/local/bin/composer

#глубокое скачивание
wget --no-parent --timestamping --convert-links --page-requisites --no-host-directories -erobots=off http://landing001.akropol-st.ru/
wget --no-parent --timestamping --convert-links --page-requisites --no-host-directories -erobots=off http://demo.oscodo.com/obsession-v1.1/html-video-bg/dark-demo-two-video-transparent-pattern.html
wget --no-parent --timestamping --convert-links --page-requisites --no-host-directories -erobots=off http://landing001.akropol-st.ru/
wget --no-parent --timestamping --convert-links --page-requisites --no-host-directories -erobots=off --adjust-extension http://landing001.akropol-st.ru/

wget -mpck --no-parent --user-agent="" -e robots=off --wait 1  http://web.archive.org/web/20141216214338/http://biz-accord.ru/
wget --no-parent --timestamping --convert-links --page-requisites --no-host-directories -erobots=off --adjust-extension  --mirror --domains=staticweb.archive.org,web.archive.org http://web.archive.org/web/20141216214338/http://biz-accord.ru/

#создаем пользователя mysql
CREATE USER 'newuser'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON * . * TO 'newuser'@'localhost';
FLUSH PRIVILEGES;


#залить все файлы в удаленную папку
rsync -az * quizly.ru:/var/www/oltri.mgbeta.ru


#wget "http://shell.skillweb.ru/json/update.php" -O "save/update.html"
#wget "http://shell.skillweb.ru/json/" -O "save/index.html"
#scp -r save suvorov@vknote.ru:/var/www/suvorov/data/www/coder24.ru/kpi


#Чистим докер
docker rm `docker ps -a | grep Exited | awk '{print $1 }'`
docker rmi `docker images -aq`

#Увеличиваем своп, подробности https://www.digitalocean.com/community/tutorials/how-to-add-swap-on-ubuntu-14-04
sudo fallocate -l 4G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
