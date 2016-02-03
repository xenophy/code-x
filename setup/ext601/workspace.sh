
NAME=$1

mkdir $NAME
cd $NAME
sencha generate workspace ./
sencha -sdk ~/Library/Sencha/ext-6.0.1/ generate app Front ./front
cd front
sencha app watch



