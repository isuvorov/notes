# Задачи на знание lodash

## Задание 1: частотность слова

Необходимо создать функцию `f1(str)`, на вход которой подается строка с текстов английкого алфавита:
> Lorem ipsum dolor sit amet, ne dicat propriae torquatos mei, nam doming eirmod sapientem ne. Nec sint recusabo ad, duo delenit inciderint ut. Eu qui adhuc affert dicant. Ne sonet argumentum sea, his lorem delectus ex, no mel minim exerci. Pro te labore habemus reformidans, eu dolor feugiat tractatos sed.
Функция должна возвращать объект: ключ, которого слово приведенное к нижнему регистру, значение количество упомянаний в тексте.

## Задание 2: вложенные функции

Есть предустановленный набор функций, на вход которые принимают число и возвращяют число.   
Есть предустановленный массив функций - который реализует сценарий.
Необходимо реализовать функцию f2(init, scenario), которая запускает данную структуру-сцерий и выводит в консоль результат его работы.

Пример описания функций:
```js
const plus = i => i+1;
const multy = i => i*2;
```

Пример описания сценариев:
```js
const scenario1 = plus;

const scenario2 = [
  multy,
];

const scenario3 = [
  plus,
  multy,
  plus,
];

const scenario4 = [
  plus,
  scenario3,
  [
    scenario1,
    scenario2,
  ]
  scenario1
];
```

Пример использования сценарив
```js
const res1 = f2(1, scenario1);
const res2 = f2(22, scenario2);
const res3 = f2(4, scenario3);
const res4 = f2(0, scenario4);
```
