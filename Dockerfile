FROM node:14
WORKDIR /usr/src/simple-node-api
Copy ./index.js .
COPY ./package.json .
RUN npm install --only=prod
EXPOSE 8000
CMD NODE_URLS=http://*:$PORT npm start