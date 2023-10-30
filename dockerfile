FROM node:16.17.0-bullseye-slim
WORKDIR /code
ENV PORT 3000
ENV NODE_ENV Development
COPY package.json ./package.json
COPY package-lock.json ./package-lock.json
RUN npm install
COPY . .
CMD ["node", "index.js"]
HEALTHCHECK CMD curl --fail http://localhost:3000 || exit 1
