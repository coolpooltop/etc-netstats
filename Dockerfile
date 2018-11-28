FROM node:11-alpine

ADD . /etc-netstats
WORKDIR /etc-netstats

RUN npm install && npm install -g grunt-cli && grunt

EXPOSE  3000
CMD ["npm", "start"]
