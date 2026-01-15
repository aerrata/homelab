#!/bin/bash

config_file="/var/www/html/config/config.php"

echo "Updating database and redis host in config.php"

sed -i "s/\('dbhost' => '\)[^']*postgres:5432',/\1postgres:5432',/"
"$$config_file" || { echo "Failed to update database host. Exiting...";
exit 1; }

occ config:system:set redis host --value="redis" || { echo "Failed to
update redis host. Continuing..."; exit 0; }