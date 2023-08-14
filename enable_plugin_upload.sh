#!/bin/sh
set -x 

which php

rm -rf plugins
ln -s plugins-custom plugins

clevercloud/pre_run.sh

cd ${APP_HOME}

cp config/config.ini.php config/config.ini.php.tmp

sed '/\[General\]/a \[General\]\nenable_plugin_upload=1' config/config.ini.php.tmp > config/config.ini.php

rm config/config.ini.php.tmp