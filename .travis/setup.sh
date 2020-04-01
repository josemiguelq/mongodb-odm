#!/bin/bash

if [[ ${TRAVIS_PHP_VERSION:0:2} = "5." ]] ; \
    then yes '' | pecl -q install -f mongo-"$DRIVER_VERSION"; \
fi
if [[ ${TRAVIS_PHP_VERSION:0:2} = "7." ]] ; \
    then composer config "platform.ext-mongo" "1.6.16" \
    && composer  require alcaeus/mongo-php-adapter="$ADAPTER_VERSION"; \
fi

composer update
