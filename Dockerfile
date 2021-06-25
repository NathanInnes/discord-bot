FROM node:16

WORKDIR /app

COPY package*.json ./
COPY tsconfig.json ./
COPY src ./

RUN npm install
RUN npm run build:typescript

CMD ["node", "build/index.js"]