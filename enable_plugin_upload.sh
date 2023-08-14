#!/bin/sh
set -x 

rm -rf plugins
ln -s plugins-custom plugins

clevercloud/pre_run.sh

cp config/config.ini.php config/config.ini.php.back

cat <<EOF | php > config/config.ini.php
<?php echo str_replace("[General]", "[General]\nenable_plugin_upload=1", file_get_contents('config/config.ini.php.back'));
EOF

rm config/config.ini.php.back