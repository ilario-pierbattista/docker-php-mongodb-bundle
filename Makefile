.PHONY: usage php-7.2-mongoext-1.3.0 php-7.2-mongoext-1.5.3 php-7.3-mongoext-1.5.3 php-7.4-mongoext-1.6.0

# See
# https://docs.mongodb.com/ecosystem/drivers/driver-compatibility-reference/#reference-compatibility-language-php

BASEIMAGE=ilariopierbattista/mongodb-bundle-php

usage:
	@echo "Select one target"

all: php-7.4-mongoext-1.6.0 php-7.4-mongoext-1.7.0 php-7.4-mongoext-1.8.0 php-7.4-mongoext-1.9.0

php-7.4-mongoext-1.6.0: IMAGE=${BASEIMAGE}:php-7.4-mongoext-1.6.0-$(shell date +%Y%m%d)
php-7.4-mongoext-1.6.0:
	docker build \
		--build-arg PHP_VERSION=7.4 \
		--build-arg MONGODB_EXTENSION_VERSION=1.6.0 \
		-t ${IMAGE} \
		.
	docker push ${IMAGE}

php-7.4-mongoext-1.7.0: IMAGE=${BASEIMAGE}:php-7.4-mongoext-1.7.0-$(shell date +%Y%m%d)
php-7.4-mongoext-1.7.0:
	docker build \
		--build-arg PHP_VERSION=7.4 \
		--build-arg MONGODB_EXTENSION_VERSION=1.7.0 \
		-t ${IMAGE} \
		.
	docker push ${IMAGE}

php-7.4-mongoext-1.8.0: IMAGE=${BASEIMAGE}:php-7.4-mongoext-1.8.0-$(shell date +%Y%m%d)
php-7.4-mongoext-1.8.0:
	docker build \
		--build-arg PHP_VERSION=7.4 \
		--build-arg MONGODB_EXTENSION_VERSION=1.8.0 \
		-t ${IMAGE} \
		.
	docker push ${IMAGE}

php-7.4-mongoext-1.9.0: IMAGE=${BASEIMAGE}:php-7.4-mongoext-1.9.0-$(shell date +%Y%m%d)
php-7.4-mongoext-1.9.0:
	docker build \
		--build-arg PHP_VERSION=7.4 \
		--build-arg MONGODB_EXTENSION_VERSION=1.9.0 \
		-t ${IMAGE} \
		.
	docker push ${IMAGE}
