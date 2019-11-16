pjName := container

docker:
	docker run \
		--name ${pjName} \
		--rm \
		-ti \
		-p 8000:1234 \
		-v $$(pwd):/root/${pjName} \
		mooxe/node \
		/bin/bash


rebuild:
	npx cfxbuilder

clean:
	rm -rf ./dist ./node_modules ./src