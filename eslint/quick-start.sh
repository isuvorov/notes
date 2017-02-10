echo "Start update your project!"
echo "=========================="
echo " "
wget https://raw.githubusercontent.com/isuvorov/mynote/master/eslint/.eslintrc -O ./.eslintrc
wget https://raw.githubusercontent.com/isuvorov/mynote/master/eslint/yarn-add-eslint | sh
wget https://raw.githubusercontent.com/isuvorov/mynote/master/eslint/.babelrc -O ./.babelrc
wget https://raw.githubusercontent.com/isuvorov/mynote/master/eslint/yarn-add-babel | sh
wget https://raw.githubusercontent.com/isuvorov/mynote/master/eslint/yarn-add-webpack | sh
echo " "
echo "================================="
echo "Your project successfuly updated!"
