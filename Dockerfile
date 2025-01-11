FROM imbios/bun-node:1.1.7-20.12.2-debian

WORKDIR /app

COPY package.json bun.lockb ./
RUN bun install --frozen-lockfile

COPY . .

RUN bun run build

ENV NODE_ENV=production

ENV NEXT_TELEMETRY_DISABLED=1

EXPOSE 3000

ENV PORT=3000

CMD ["bun","run","start"]