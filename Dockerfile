FROM node:18
RUN npm i -g pnpm

WORKDIR /app
COPY package.json pnpm-lock.yaml ./

RUN pnpm install --silent

COPY . ./

RUN pnpm build
RUN pnpm prune --prod

ENV PORT=3000

CMD [ "node", "dist/index.js" ]
EXPOSE 3000