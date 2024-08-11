# Build Stage
FROM node:20.12.2-alpine AS build

WORKDIR /app

COPY package*.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . .
RUN yarn build

# Production Stage
FROM node:20.12.2-alpine

WORKDIR /app

COPY --from=build /app/dist /app/dist
COPY package*.json yarn.lock ./

RUN yarn install --frozen-lockfile --production
RUN yarn global add pm2

CMD [ "pm2-runtime", "dist/index.js" ]