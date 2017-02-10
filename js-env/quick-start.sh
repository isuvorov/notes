echo "Start update your project!"
echo "=========================="
echo " "
wget https://raw.githubusercontent.com/isuvorov/notes/master/js-env/.eslintrc -O ./.eslintrc
wget https://raw.githubusercontent.com/isuvorov/notes/master/js-env/yarn-add-eslint | sh
wget https://raw.githubusercontent.com/isuvorov/notes/master/js-env/.babelrc -O ./.babelrc
wget https://raw.githubusercontent.com/isuvorov/notes/master/js-env/yarn-add-babel | sh
wget https://raw.githubusercontent.com/isuvorov/notes/master/js-env/yarn-add-webpack | sh
echo " "
echo "================================="
echo "Your project successfuly updated!"
