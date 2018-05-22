FROM node:0.12.2

COPY . /app

RUN cd /app; npm install

EXPOSE 3000
CMD ["node", "/app/server.js"]
