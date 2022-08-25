FROM node:latest@sha256:a0a2fc4435b0c9ae7bec0a69b1279323a4a41c5a005581fbf30d39cd5777db37

RUN mkdir /app
WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH

COPY package.json package-lock.json /app/
RUN npm install

# Or if you're using Yarn
# ADD package.json yarn.lock /app/
# RUN yarn install

COPY . /app/
