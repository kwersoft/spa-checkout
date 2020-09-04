FROM node:10
RUN cd /app
COPY package.json ./package.json
RUN wget https://github.com/mozilla/geckodriver/releases/download/v0.19.0/geckodriver-v0.19.0-linux64.tar.gz; mkdir geckodriver; tar -xzf geckodriver-v0.19.0-linux64.tar.gz -C geckodriver; export PATH=$PATH:$PWD/geckodriver;
RUN npm config set registry http://registry.npmjs.org/ && npm i && npm i -g @vue/cli && npm i -g @vue/cli-service
WORKDIR /app
