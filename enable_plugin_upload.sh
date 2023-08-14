#!/bin/sh
set -x 

which php

rm -rf plugins
ln -s plugins-custom plugins

clevercloud/pre_run.sh

cp config/config.ini.php config/config.ini.php.back

sed -i 's/[General]/[General]\nenable_plugin_upload=1/' config/config.ini.php

rm config/config.ini.php.back