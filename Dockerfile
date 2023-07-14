FROM node:lts-alpine

WORKDIR /app

COPY ./package.json /app/

COPY ./yarn.lock /app/

RUN yarn

COPY . /app

EXPOSE 4000

CMD ["yarn", "dev"]