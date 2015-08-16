#!/bin/bash

DIR=`pwd`/`dirname $0`;

cd $DIR/..
composer install --no-interaction --prefer-source

$DIR/../vendor/bin/tester -p php $DIR/src -s -j 4 --colors 1 -c $DIR/php_unix.ini
