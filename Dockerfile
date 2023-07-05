FROM node:18

# Why /app ? IDK haha
WORKDIR /app

COPY package.json ./
COPY package-lock.json ./

RUN pnpm install --silent

COPY . ./

ENV PORT=3000

CMD [ "node", "dist/index.js" ]

EXPOSE 3000