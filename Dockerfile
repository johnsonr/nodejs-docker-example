FROM node:latest@sha256:75691735fa05fc50b65c96b1d992d1c7f44c87d6fd61c8f1f8ac5c54f38009db

RUN mkdir /app
WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH

COPY package.json package-lock.json /app/
RUN npm install

# Or if you're using Yarn
# ADD package.json yarn.lock /app/
# RUN yarn install

COPY . /app/
