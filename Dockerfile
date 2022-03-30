FROM node:alpine

# We can use --build-args at every build without changing our docker file. So, ARG is set using --build-args
ARG APP_PORT=9999

ENV APP_PORT=${APP_PORT}

WORKDIR /myapp/src

COPY ./package*.json ./

RUN npm install

COPY ./src ./

CMD ["npm", "run", "docker-start"]