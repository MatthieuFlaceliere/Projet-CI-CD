FROM node:20-alpine

WORKDIR /app

COPY ./package.json /app/
COPY ./package-lock.json /app/

RUN npm ci --production

COPY ./index.js /app/

EXPOSE 3000

CMD ["node", "index.js"]