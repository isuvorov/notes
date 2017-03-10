echo "Start update your project!"
echo "=========================="
echo " "
wget https://raw.githubusercontent.com/isuvorov/notes/master/js-env/.eslintrc -O ./.eslintrc
wget -O - https://raw.githubusercontent.com/isuvorov/notes/master/js-env/yarn-add-eslint.sh | sh
wget https://raw.githubusercontent.com/isuvorov/notes/master/js-env/.babelrc -O ./.babelrc
wget -O - https://raw.githubusercontent.com/isuvorov/notes/master/js-env/yarn-add-babel.sh | sh
wget -O - https://raw.githubusercontent.com/isuvorov/notes/master/js-env/yarn-add-webpack.sh | sh
echo " "
echo "================================="
echo "Your project successfuly updated!"
