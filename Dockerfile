FROM mingfunwong/fibos:base	

WORKDIR /fibos
COPY package.json package.json

RUN curl -s http://security.ubuntu.com/ubuntu/pool/main/i/icu/libicu55_55.1-7_amd64.deb | dpkg -i  \ 
  && curl -s https://fibos.io/download/installer.sh?v1.7.1.8 | sh \
  && fibos --install fibos.js
