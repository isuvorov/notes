# SSH

- TOD: Пару фраз о том что такое ssh 


## SSH и GIT 

Для чего нужен ssh, чтобы потом коннектиться к хосту без пароля.


### 1. Создаем ssh ключ (если еще не создан)
Если у вас нет пары ключей, их можно сделать таким образом:

```
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```
Подробнее [тут](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/)

- публичный ключ лежит тут `~/.ssh/id_rsa.pub` -- можно всем показывать
- приватный тут `~/.ssh/id_rsa` -- никому не показывай, бекапь его, перед форматированием HDD




### 2. Копируем публичный ключ


*Общий обход*
```
cat ~/.ssh/id_rsa.pub
```

обводим, копируем в буфер обмена


*Для мака* 
```
pbcopy < ~/.ssh/id_rsa.pub
```

ключ уже в буфере обмена


### 3а. Отсылаем ключ

Если ваш ключ требует ит специалист (тимлид, девопс), скидывайте ему или файл id_rsa.pub, или сам контент ключа. 
ВАЖНО: НИКОГДА НЕ СКИДЫВАЙТЕ ПРИВАТНЫЙ КЛЮЧА id_rsa


### 3b. Github

Написано тут:
https://docs.github.com/en/github/authenticating-to-github/adding-a-new-ssh-key-to-your-github-account

TODO: расписать более подробно тут


### 3b. Gitlab

Добавлять сюда:
https://git.isuvorov.com/-/profile/keys

TODO: расписать более подробно тут


## SSH и Хостинг сервер

Для чего нужен ssh, чтобы клонировать и пушить репозитории без пароля.


### 1. Создаем ssh ключи (если еще не созданы)
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
	
1. `ssh-copy-id worker1.isuvorov.com`
2. Вводим один раз пароль
3. Теперь, в любое время можем подключаться без пароля:	`ssh worker1.isuvorov.com`

Если не стоит `ssh-copy-id`, можно установить через [brew](/osx.md): `brew install ssh-copy-id`.

Что делает `ssh-copy-id` под капотом:
1. создает папку /root/.ssh если еще не создана
2. закидывает свой публичный ключ с локального компа отсюда `~/.ssh/id_rsa.pub`, на хост сюда `~/.ssh/authorized_keys`

по сути выполняя след команду
```bash
cat ~/.ssh/id_rsa.pub | ssh root@worker1.isuvorov.com 'mkdir -p -v ~/.ssh; cat >> ~/.ssh/authorized_keys'
```


### 4* Альясы хоста
Добавляем alias, чтобы подключаться по `ssh worker` и не мучаться

- edit `~/.ssh/config`
```
HOST worker
	HostName worker1.isuvorov.com
	USER root
```

