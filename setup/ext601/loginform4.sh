NAME=$1
oil create $NAME
cd $NAME
mv public public_html
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
curl https://raw.githubusercontent.com/xenophy/code-x/master/ext6/loginform3/classic/sass/src/view/main/Main.scss > classic/sass/src/view/main/Main.scss
mkdir -p login/resources/images
curl https://raw.githubusercontent.com/xenophy/code-x/master/ext6/loginform3/resources/images/logo.png > login/resources/images/logo.png
mv front/index.html front/index.php
mv login/index.html login/index.php
sed -i -e "s/RewriteBase \/RewriteBase \/~$NAME\//" ../public_html/.htaccess
cd login
sencha app build

