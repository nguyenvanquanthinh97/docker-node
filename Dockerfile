# syntax=docker/dockerfile:1
FROM node:12.8.1
ENV NODE_ENV=production
WORKDIR /app
COPY ["package.json", "package-lock.json*", "./"]
RUN npm install --production
COPY . .
RUN npm run test
CMD ["npm", "start"]