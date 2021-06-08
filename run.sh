#!/bin/bash

echo "inicianco container..."
echo "ICIANDO!!" > /var/www/html/ini.html
apachectl -DFOREGROUND
