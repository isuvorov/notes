# Задача Nested Config
Очень часто, в программировании приходится парсить файлы с линейной структурой данных. Работать со структурами похожими на словари `{key: value, key2: value2}`

Для примера это может быть часть конфига nginx или apache, ini конфиги, файл альясов bash, .env файлы, или список просто переменных окружения в памяти (process.env).

Вот пример файла конфига `.env`
```
KEY=VALUE
PORT=8080
HOSTNAME=localhost
SOCKETSIO=true
```

Однако несмотря на линейную структуру данных в файле, бывает необходимо передать вложенную структуру данных, например:

```
PORT=8080
HOSTNAME=localhost
middlewares.accessLogger=1
middlewares.bodyParser.json=1
middlewares.bodyParser.urlencoded.limit=50mb
middlewares.bodyParser.urlencoded.extended=1
middlewares.reqData=1
middlewares.cookieParser=1
middlewares.cors=0
```


Функция parse в данном случае должна возвращать объект похожий на:
```js
{
  PORT: '8080',
  HOSTNAME: 'localhost',
  middlewares: {
    accessLogger: '1',
    bodyParser: {
      json: '1',
      urlencoded: {
        limit: '50mb',
        extended: '1',
      },
    },
    reqData: '1',
    cookieParser: '1',
    cors: '0'
  }
}
```

## Задание 1
Необходимо написать функции, способную скомпоновать данные из линейного key-value объекта во вложенный.
## Задание 2\*
Необходимо написать функцию, которая ищет в корне запускаемого проекта .env файл, парсит его и вывдоит в консоль конфиг.
## Задание 3\*\*
Необходимо внедрить механизам подтягивания данных из .env файла и process.env в конфиг `lego-starter-kit/example2`

## Совет
использовать функции lodash.

P.S. Задание 1 хорошо поддается автоматическому тестированию, оно будет вынесено в личный кабинет и покрыто автотестами.
