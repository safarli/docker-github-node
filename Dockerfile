FROM node:alpine

WORKDIR /myapp/src

COPY package*.json .

RUN npm install

COPY src .

EXPOSE 8080

CMD ["npm", "prod-start"]