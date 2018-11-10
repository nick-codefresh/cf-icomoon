FROM debian:jessie

ENV LANG="C.UTF-8"

RUN apt-get update
RUN apt-get -y install xvfb --fix-missing
RUN apt-get -y install unzip --fix-missing
RUN apt-get -y install -y --force-yes wget git

RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
RUN sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
RUN apt-get update
RUN apt-get -y install google-chrome-stable

RUN apt-get install -y --force-yes nodejs
RUN apt-get install -y --force-yes npm
RUN apt-get install -y --force-yes nodejs-legacy
RUN npm install n -g
RUN n 9.6.1

RUN npm i -g icomoon-cli
