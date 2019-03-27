FROM node:8.12.0

RUN apt-get update; exit 0
RUN apt-get install -y; exit 0

RUN apt-get install -y python3 \
    python3-pip \
    groff

RUN curl -o- -L https://yarnpkg.com/install.sh | bash

RUN pip3 install awscli

CMD ["node"]