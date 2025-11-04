FROM node:20-alpine

WORKDIR /usr/src/app

COPY package.json ./

RUN npm install --production --no-audit --no-fund

COPY . .

CMD ["node", "app.js"]
