docker_builder:
	docker build -t dd-opentracing-cpp:latest Docker

build:
	docker run -it --rm -v $$PWD/:/dd-opentracing-cpp/ dd-opentracing-cpp:latest
