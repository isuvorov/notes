

## 1 задача - Один комментарий

Сущность комментарий:
*   userid:
*   аватарка
*   имя
*   Content
*   text
*   images / attachments (?)
*   подумать про упомянания ?
*   reply ?
*   лайк ???
*   дата
*   REPORT
*   редактирование

форма написания комментария
*   Аватарка
*   textarea + autosize
*   attachment ???

Отображение комментариия

### На что посмотреть:

*  https://dribbble.com/shots/1471366-The-Loop

## 2 задача - Виджет комментариев

Смотрим на ВК:
Виджет комменатриев:
*   Список комментариев
*   форма написания комментария (+3a)
*   асинхронная подгрузка комментариев
*   (readonly)  можно ответить или нет
*   подумать про подгрузку постраничности и тд

## 3 задача - Посты
Смотрим на посты в Medium и на статьи habrahabr

### Компоненты
*  Список постов
*  Один не раскрытый пост
*  Один раскрытый пост
### Один пост
*  Автор
	*  Имя
	* Автарка
	*  Блог
*  Дата публикации
* title
* Subtitle
* Image
* Content
* Tags

## 3а задача - Интерфейс написание постов / комментариев
Сделать интерфейс  написание постов с Markdown editor
Вывод постов с помощью Markdown WYSISYG:
* https://markdown-it.github.io/
*

## 4 задача - Рейтинги и лайки
Rating#3
Лайки
Три типа лайка
* Лайк
* Лайк \ Дизлайк
* Рейтинг (5, 10 звезд)

### 1 ед лайка
*   Сущность
*   ID сущности
*   UserId
*   value - 1, score

/likes/post/123445

{
 count: 7,
 users: [{id, avatars}, {id, avatars}]()
}

* 1 - LIKE
* 1-2 LIKE/DISLIKE
* 1-5, 10  Score

* кнопка (кнопка / like)
* количество
* аватарки (твоя аватарка первая)

* http://i.imgur.com/TzZqYJJ.gifv
* https://dribbble.com/shots/2796101-Enterprise-Social-Communication-Tool-and-Intranet/attachments/572307
* https://dribbble.com/shots/2942857-Community-discussion-webapp/attachments/611329
* like-dislike https://vc.ru/p/telegram-calls-growth#comment435121


## 5 задача - Переписка в чате
* avatar + name
* group photo + name
* несколько аватарок
* Превью последнего сообщения + Вы
* когда
* количество сообщений
* статус последнего сообщения
* удалить переписки
* forwards ???
* деление на даты
* слияние сообщений - от одного автора + в течениии часа
* бесконечный скролинг вверх

### что использовать:
* https://github.com/orgsync/react-list


## 6 задача - Список сообщений

??# Message List
??# Dialog/Rooms List

## 7  задача - Консультант на сайт
Как Чат выше, но нужно будет заняться клиент серверным взаимодействием.

Научиться билдить реакт как виджет.
popup message list - jivosite



## 8 задача - Редактор слайдов:
Slides Redactor
JSON Schema
Json Schema Form:
Slides -
Slide extend React
Карусельные блоки

## 9 задача -  Notifications

Подписки, отслеживание , нотификации
Сначала Chrome Notifications,  потом APN и Firebase

## 10 задача - React Карты
