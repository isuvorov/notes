# SSH

Для чего нужен ssh, чтобы потом коннектиться к хосту без пароля.


### 1. Создаем ssh ключи, если еще не созданы
Если у вас нет пары ключей, их можно сделать таким образом:

```
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```
Подробнее [тут](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/)

- публичный ключ лежит тут `~/.ssh/id_rsa.pub` -- можно всем показывать
- приватный тут `~/.ssh/id_rsa` -- никому не показывай, бекапь его, перед форматированием HDD

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

Если не стоит `ssh-copy-id`, можно установить через [brew](/osx.md): `brew install ssh-copy-id`.

Что делает `ssh-copy-id` под капотом:
1. создает папку /root/.ssh если еще не создана
2. закидывает свой публичный ключ с локального компа отсюда `~/.ssh/id_rsa.pub`, на хост сюда `~/.ssh/authorized_keys`

по сути выполняя след команду
```sh
cat ~/.ssh/id_rsa.pub | ssh root@polygon.mgbeta.ru 'mkdir -p -v ~/.ssh; cat >> ~/.ssh/authorized_keys'
```


### 4* Альясы хоста
Добавляем alias, чтобы подключаться по `ssh poly` и не мучаться

- edit `~/.ssh/config`
```
HOST poly
	HostName polygon.mgbeta.ru
	USER root
```
