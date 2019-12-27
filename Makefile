

# See
# https://docs.mongodb.com/ecosystem/drivers/driver-compatibility-reference/#reference-compatibility-language-php

usage:
	@echo "Select one target"

php-7.1-mongoext-1.1.5:
	docker build \
		--build-arg PHP_VERSION=7.1 \
		--build-arg MONGODB_EXTENSION_VERSION=1.1.5 \
		-t ilariopierbattista/mongodb-bundle-php:php-7.1-mongoext-1.1.5 \
		.
	docker push ilariopierbattista/mongodb-bundle-php:php-7.1-mongoext-1.1.5


php-7.2-mongoext-1.3.0
php-7.2-mongoext-1.3.0
php-7.2-mongoext-1.5.3
php-7.3-mongoext-1.5.3
php-7.3-mongoext-1.5.3




