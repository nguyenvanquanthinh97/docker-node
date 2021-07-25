# syntax=docker/dockerfile:1
FROM node:12.8.1
WORKDIR /app
COPY ["package.json", "package-lock.json*", "./"]
RUN npm install --production
RUN npm install --save-dev mocha
COPY . .
RUN npm run test
CMD ["npm", "start"]