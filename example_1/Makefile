

build-build-environment:
	 docker build -f Dockerfile.build -t scortum/golang-build .

build-go-app:
	docker run -it -v `pwd`/src:/app scortum/golang-build go build -o main .

get-certs:
	curl -o src/ca-certificates.crt https://raw.githubusercontent.com/bagder/ca-bundle/master/ca-bundle.crt

build-container:
	docker build -t scortum/golang-minimal-app .


run:
	docker run -v /usr/share/zoneinfo:/usr/share/zoneinfo  \
                   scortum/golang-minimal-app


