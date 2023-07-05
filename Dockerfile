FROM node:18
RUN npm i -g pnpm

# Why /app ? IDK haha
WORKDIR /app

COPY package.json ./
COPY pnpm-lock.yaml ./

RUN pnpm install --silent

COPY . ./

ENV PORT=3000

CMD [ "node", "dist/index.js" ]

EXPOSE 3000