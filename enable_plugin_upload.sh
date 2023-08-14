#!/bin/sh
set -x 

which php

rm -rf plugins
ln -s plugins-custom plugins

clevercloud/pre_run.sh

pwd

sed -i '/\[General\]/a enable_plugin_upload=1' config/config.ini.php