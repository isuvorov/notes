mysqldump -p -u it-interview it-interview > it-interview_`date +%d_%b_%Y`.sql  # дампим базу в файл

mysql -uit-interview -pASdasdasdas it-interview < it-interview_12_02_2014.sql  # восстанавливаем базу из файла
