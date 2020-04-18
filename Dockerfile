FROM mingfunwong/fibos:base	

WORKDIR /fibos
COPY package.json package.json

RUN wget http://security.ubuntu.com/ubuntu/pool/main/i/icu/libicu55_55.1-7_amd64.deb \ 
  && dpkg -i libicu55_55.1-7_amd64.deb \
  && curl -s https://fibos.io/download/installer.sh?v1.7.1.11 | sh \
  && fibos --install fibos.js
