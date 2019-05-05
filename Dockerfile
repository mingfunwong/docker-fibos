FROM mingfunwong/fibos:v1.5.4.1

WORKDIR /fibos
COPY package.json package.json

RUN fibos --install fibos.js