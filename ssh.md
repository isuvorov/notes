# SSH

### 1. Создаем ssh ключи, если еще не созданы
Если у вас нет пары ключей, их можно сделать таким образом:

```
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```
Подробнее [https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/][тут]

### 2. Добавляем alias root@

Чтобы не писать постоянно `ssh root@....`

- edit `.ssh/config`
```
HOST *
     USER root
```

### 3. Деплоим свой публичный ключ на хост
	
1. `ssh-copy-id polygon.mgbeta.ru`
2. Вводим один раз пароль
3. Теперь, в любое время можем подключаться без пароля:	`ssh polygon.mgbeta.ru`

Если не стоит `ssh-copy-id`, можно установить через (brew)[/osx.md]


### 4* Альясы хоста
Добавляем alias, чтобы подключаться по `ssh poly` и не мучаться

- edit `~/.ssh/config`
```
HOST poly
	HostName polygon.mgbeta.ru
	USER root
```
