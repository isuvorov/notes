# SSH

1. Добавляем alias
	`atom ~/.ssh/config`
	```
	HOST poly
		HostName polygon.mgbeta.ru
		USER root
	```
2. Деплоим свой публичный ключ
	`ssh-copy-id poly`
3. Вводим один раз пароль
4. Теперь, в любое время можем подключаться без пароля:
	`ssh poly`

Если у вас нет пары ключей, их можно сделать таким образом:
[https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/][1]
