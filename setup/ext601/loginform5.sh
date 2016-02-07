NAME=$1


# FuelPHPの設置
oil create codex
cd codex

# publicをpublic_htmlへ変更
mv public public_html

# .htaccessを修正
sed -i -e "s/#RewriteBase \/wherever\/fuel\/is/RewriteBase \/~codex\//" public_html/.htaccess
sed -i -e "s/RewriteCond %{REQUEST_FILENAME} \!-d/#RewriteCond %{REQUEST_FILENAME} \!-d/" public_html/.htaccess

# fuel-ext-direct設置
composer require xenophy/fuel-ext-direct

# Direct関数設置
mkdir -p fuel/app/classes/direct/
curl https://raw.githubusercontent.com/xenophy/code-x/master/ext6/loginform5/fuel/app/classes/direct/login.php > fuel/app/classes/direct/login.php

# login用Viewディレクトリ作成
mkdir -p fuel/app/views/welcome/login/

# ルーター修正
curl https://raw.githubusercontent.com/xenophy/code-x/master/ext6/loginform5/fuel/app/config/routes.php > fuel/app/config/routes.php

# コンフィグ修正
curl https://raw.githubusercontent.com/xenophy/code-x/master/ext6/loginform5/fuel/app/config/auth.php > fuel/app/config/auth.php
curl https://raw.githubusercontent.com/xenophy/code-x/master/ext6/loginform5/fuel/app/config/config.php > fuel/app/config/config.php
curl https://raw.githubusercontent.com/xenophy/code-x/master/ext6/loginform5/fuel/app/config/development/db.php > fuel/app/config/development/db.php
curl https://raw.githubusercontent.com/xenophy/code-x/master/ext6/loginform5/fuel/app/config/extdirect.php > fuel/app/config/extdirect.php

# コントローラー修正
curl https://raw.githubusercontent.com/xenophy/code-x/master/ext6/loginform5/fuel/app/classes/controller/welcome.php > fuel/app/classes/controller/welcome.php

# テーブルセットアップタスク設置
curl https://raw.githubusercontent.com/xenophy/code-x/master/ext6/loginform5/fuel/app/tasks/setuptables.php > fuel/app/tasks/setuptables.php

# OrmAuthマイグレーション実行
oil r migrate --packages=auth

# テーブルセットアップ
oil refine setuptables:index

# ワークスペースの作成
mkdir codex
cd codex/
sencha generate workspace ./

# front/loginページの作成
sencha -sdk ~/Library/Sencha/ext-6.0.1/ generate app Front ./front
sencha -sdk ~/Library/Sencha/ext-6.0.1/ generate app Login ./login

# 画像リソース用ディレクトリ作成
mkdir -p login/resources/images

# 画像リソース取得
curl https://raw.githubusercontent.com/xenophy/code-x/master/ext6/loginform5/codex/login/resources/images/logo.png > login/resources/images/logo.png

# app.jsonを修正する
curl https://raw.githubusercontent.com/xenophy/code-x/master/ext6/loginform5/codex/front/app.json > front/app.json
curl https://raw.githubusercontent.com/xenophy/code-x/master/ext6/loginform5/codex/login/app.json > login/app.json
mv front/index.html front/index.php
mv login/index.html login/index.php

# ログインフォーム実装コード設置
rm login/app/view/main/Main*.js
rm login/classic/src/view/main/*.js
curl https://raw.githubusercontent.com/xenophy/code-x/master/ext6/loginform5/codex/login/app/Application.js > login/app/Application.js
curl https://raw.githubusercontent.com/xenophy/code-x/master/ext6/loginform5/codex/login/app/view/main/MainController.js > login/app/view/main/MainController.js
curl https://raw.githubusercontent.com/xenophy/code-x/master/ext6/loginform5/codex/login/classic/src/view/main/Form.js > login/classic/src/view/main/Form.js
curl https://raw.githubusercontent.com/xenophy/code-x/master/ext6/loginform5/codex/login/classic/src/view/main/Main.js > login/classic/src/view/main/Main.js
curl https://raw.githubusercontent.com/xenophy/code-x/master/ext6/loginform5/codex/login/classic/sass/src/view/main/Main.scss > login/classic/sass/src/view/main/Main.scss


# Sencha Cmdのビルドスクリプトを追加する
curl https://raw.githubusercontent.com/xenophy/code-x/master/ext6/loginform5/codex/front/build.xml > front/build.xml
curl https://raw.githubusercontent.com/xenophy/code-x/master/ext6/loginform5/codex/login/build.xml > login/build.xml

# loginページビルド
cd login
sencha ap b
cd ../

# frontページビルド
cd front
sencha ap b
cd ../

