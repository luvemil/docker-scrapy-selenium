FROM python:3.9-slim

RUN apt update && apt upgrade -y

RUN apt install -y \
    firefox-esr \
    libpci-dev \
    libegl-dev

RUN pip install scrapy==2.11.1 scrapy-selenium==0.0.7 selenium==3.141.0 webdrivermanager

RUN webdrivermanager firefox --linkpath /usr/local/bin 

CMD ["/bin/bash"]