FROM node:18-alpine

RUN apk add --no-cache \
    git \
    chromium \
    nss \
    freetype \
    harfbuzz \
    ttf-freefont \
    udev \
    bash \
    curl

ENV PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser

WORKDIR /app
COPY . .
RUN yarn install

EXPOSE 3000
CMD ["yarn", "start"]