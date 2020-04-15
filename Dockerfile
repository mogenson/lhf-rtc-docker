FROM node:10

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY LHF_rtc/web ./

EXPOSE 1111
EXPOSE 3333
EXPOSE 4444

CMD [ "node", "index.js" ]
