FROM mingfunwong/fibos:base	

WORKDIR /fibos
COPY package.json package.json

RUN curl -s https://fibos.io/download/installer.sh | sh \
  && fibos --install fibos.js