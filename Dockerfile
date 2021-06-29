
FROM node:16-alpine3.12 AS development

WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install
COPY . .

EXPOSE 8080

CMD ["node", "index.js"]
