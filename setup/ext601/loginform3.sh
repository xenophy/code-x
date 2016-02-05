NAME=$1
oil create $NAME
cd $NAME
mkdir $NAME
cd $NAME
sencha generate workspace ./
sencha -sdk ~/Library/Sencha/ext-6.0.1/ generate app Front ./front
sencha -sdk ~/Library/Sencha/ext-6.0.1/ generate app Login ./login
rm login/app/view/main/Main*.js
rm login/classic/src/view/main/*.js







