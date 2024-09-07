FROM node:20.12.2-alpine AS build

WORKDIR /app

COPY package*.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . .

CMD [ "yarn", "vitest", "run" ]