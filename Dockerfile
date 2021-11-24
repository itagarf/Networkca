
FROM node:alpine

WORKDIR /usr/app


COPY packages*.json ./

RUN npm install

COPY . .

CMD ["npm", "start"]