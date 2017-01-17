

## Скачиваем и перезаписываем eslint конфиг проекта
```
wget https://raw.githubusercontent.com/isuvorov/mynote/master/eslint/.eslintrc \
  -O ./.eslintrc 
```

## Устанавливаем зависимости для работы eslint

```
yarn add --dev \
  babel-eslint@7.1.1 \
  eslint@3.11.0 \
  eslint-config-airbnb@14.0.0 \
  eslint-loader@1.3.0 \
  eslint-plugin-import@2.2.0 \
  eslint-plugin-jsx-a11y@3.0.1 \
  eslint-plugin-react@6.7.1
```
