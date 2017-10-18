FROM ubuntu:latest
RUN apt update -y; \
    apt upgrade -y; \
    apt install python-pip gunicorn -y; \
    pip install httpbin
EXPOSE 8080
ENTRYPOINT ["/usr/bin/gunicorn httpbin:app -b 0.0.0.0:8080"]
