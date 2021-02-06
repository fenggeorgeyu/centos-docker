image=fenggeorgeyu/centos-dev:jdk8

git_dir=${HOME}/git

name=centos-docker1

all:

pull:
	docker pull ${image}

create:
	docker run --name ${name} -d -it \
		-v ${git_dir}:git\
		--restart=always ${image}

connect:
	docker exec -it ${name} /bin/bash

stop:
	docker stop ${name}

start:
	docker start ${name}

restart:
	docker restart ${name}

delete:
	docker rm ${name}

upgrade:
	docker pull ${image}

commit:
	git add -u
	git add .
	git commit -am 'make commit'
	git push




