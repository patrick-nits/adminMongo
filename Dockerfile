  FROM node:latest

  COPY . /app/user

  WORKDIR /app/user
  RUN npm install
  RUN chmod -R 775 .
  RUN rm config/app.json
  CMD node app.js
