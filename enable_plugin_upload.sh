#!/bin/sh
set -x 

rm -rf plugins
ln -s plugins-custom plugins

clevercloud/pre_run.sh

sed -i '/\[General\]/a enable_plugin_upload=1' config/config.ini.php

php console plugin:activate TagManager
php console plugin:activate Bandwidth