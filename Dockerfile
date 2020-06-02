FROM mingfunwong/fibos:base	

WORKDIR /fibos
COPY package.json package.json

RUN curl -s https://fibos.io/download/installer.sh?v1.7.1.11 | sh \
  && fibos --install fibos.js
