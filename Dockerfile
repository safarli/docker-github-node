FROM node:alpine

# We can use --build-arg at every build without changing our docker file. So, ARG is set using --build-arg
ARG APP_PORT=4444

ENV APP_PORT=${APP_PORT}

WORKDIR /myapp/src

COPY ./package*.json ./

RUN npm install

COPY ./src ./

# docker inspect 'image_name' will show you EXPOSED PORTS
EXPOSE ${APP_PORT}

CMD ["npm", "run", "docker-start"]