
# Настройка проектов и Nginx

Общие конфиги nginx держу тут: `/projects/.nginx`

Предположим мне нужно развенуть проект **lsk**

У меня он будет лежать тут: `/projects/lsk`

Файлы ноды тут: `/projects/lsk/app`

Конфиг nginx для этого проекта: `/projects/lsk/nginx.conf`

Логи проекта (nginx): `/projects/lsk/logs`

### Конфиг проекта

`/projects/lsk/nginx.conf`
```conf
server {
  server_name lsk.mgbeta.ru;
  listen 80;

  # Если мне нужен SSL для этого проекта
  #include /projects/.nginx/mgbeta.ru.ssl.conf;  

  access_log /projects/lsk/logs/access.log;
  error_log /projects/lsk/logs/error.log;
  include /projects/.nginx/www.conf;

  # прокидываю статику
  location /assets {
    root /projects/lsk/app/assets;
  }
  # проксирую ноду
  location / {
    proxy_pass  http://127.0.0.1:8035;
    include /projects/.nginx/proxy.conf;
  }
}
```

### Общий конфиг всех сайтов
`/projects/.nginx/www.conf`
```conf
include /projects/.nginx/errors.conf;
include /projects/.nginx/gzip.conf;

### Включаю gzip
`/projects/.nginx/gzip.conf`
```conf
gzip on;
gzip_disable "msie6";
gzip_types text/plain text/css application/json application/x-javascript text/xml application/xml application/xml+rss text/javascript application/javascript;
gzip_comp_level 6;
```

### Подменяю nginx ошибки
`/projects/.nginx/errors.conf`
```conf
error_page 400 /400.html;
error_page 401 /401.html;
error_page 403 /403.html;
error_page 404 /404.html;
error_page 500 /500.html;
error_page 502 /502.html;
error_page 503 /503.html;
error_page 504 /504.html;

location ~ /(400|401|403|404|500|502|503|504).html {
    root /projects/.nginx/errors;
    internal;
}
```

### Конфиг для проксирования
`/projects/.nginx/proxy.conf`
```conf
proxy_set_header Host $http_host;
proxy_set_header X-Real-IP $remote_addr;
proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
proxy_set_header X-Forwarded-Proto $scheme;
proxy_set_header Upgrade $http_upgrade;
proxy_set_header Connection "upgrade";
```

### Конфиг для https
`/projects/.nginx/mgbeta.ru.ssl.conf`
```conf
if ($scheme = http) {
  return 301 https://$http_host$request_uri;
}
listen 443 ssl;
ssl_certificate     /root/ssl/mgbeta.ru.crt;
ssl_certificate_key /root/ssl/mgbeta.ru.key;
```
