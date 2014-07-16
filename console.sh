mysqldump -p -u it-interview it-interview > it-interview_`date +%d_%b_%Y`.sql  # дампим базу в файл

mysql -uit-interview -pASdasdasdas it-interview < it-interview_12_02_2014.sql  # восстанавливаем базу из файла


#быстро переименовать / добавить префикс
rename s/'^'/'MyPrefix'/ *

#создает папку .ssh если еще не создана
#закидываем свой публичный ключ на удаленный комп, для того, чтобы потом коннектиться к нему по ssh без пароля
cat ~/.ssh/id_rsa.pub | ssh root@192.168.7.18 'mkdir -p -v ~/.ssh; cat >> ~/.ssh/authorized_keys'

#архивируем директорию
tar -czvf bikemol.tar.gz opencart.hahabr.ru

#а это еще круче: архивируем удаленную директорию, с максимальным сжатием, и выкачиваем файл по ssh
ssh root@server.ru 'cd /var/www && tar -cf - anfeya | gzip -9' > anfeya_2014_04_19.tgz


ssh root@server.ru 'cd /var/www && tar -cf - anfeya | gzip -9' > anfeya_2014_04_19.tgz

#логинется по ssh и скачивает файл
scp root@vknote.ru:landingov.sql ~/landingov.sql

#wget "http://shell.skillweb.ru/json/update.php" -O "save/update.html"
#wget "http://shell.skillweb.ru/json/" -O "save/index.html"
#scp -r save suvorov@vknote.ru:/var/www/suvorov/data/www/coder24.ru/kpi
