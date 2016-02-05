NAME=$1
oil create $NAME
cd $NAME
mkdir $NAME
cd $NAME
sencha generate workspace ./
sencha -sdk ~/Library/Sencha/ext-6.0.1/ generate app Front ./front
sencha -sdk ~/Library/Sencha/ext-6.0.1/ generate app Login ./login
rm app.json
rm login/app/view/main/Main*.js
rm login/classic/src/view/main/*.js
curl https://raw.githubusercontent.com/xenophy/code-x/master/ext6/loginform3/app/view/main/MainController.js > login/app/view/main/MainController.js
curl https://raw.githubusercontent.com/xenophy/code-x/master/ext6/loginform3/classic/src/view/main/Form.js > login/classic/src/view/main/Form.js
curl https://raw.githubusercontent.com/xenophy/code-x/master/ext6/loginform3/classic/src/view/main/Main.js > login/classic/src/view/main/Main.js
curl https://raw.githubusercontent.com/xenophy/code-x/master/ext6/loginform3/app.json > login/app.json
cd login
sencha app watch

