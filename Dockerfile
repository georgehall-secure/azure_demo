FROM node:16-alpine
WORKDIR /app
RUN npm init -y && npm install express@4.17.1 lodash@4.17.19
COPY server.js .
EXPOSE 8080
CMD ["node", "server.js"]
