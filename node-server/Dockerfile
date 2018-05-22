FROM node:0.12.2

COPY . /app

RUN cd /app; npm install

EXPOSE 80
CMD ["node", "/app/server.js"]
