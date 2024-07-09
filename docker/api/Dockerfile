FROM node:22.3.0

WORKDIR /app
RUN npm i -g @nestjs/cli
COPY /package*.json /
RUN npm i

CMD [ "npm", "run", "start:dev" ]