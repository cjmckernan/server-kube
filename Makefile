buildimage:
	docker build -t server-container:1.0 .

deletecontainer:
	docker rm server-container

rundev:
	docker run --name server-container -p 8000:8000 -d -v $(shell pwd):/code server-container:1.0

start: 
	docker start server-container
	
stop:
	docker stop server-container

.PHONY: rundev buildimage deletecontainer stop start
