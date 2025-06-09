FROM node:18-alpine

# Instala Chromium y dependencias para Puppeteer
RUN apk add --no-cache \
    chromium \
    nss \
    freetype \
    harfbuzz \
    ttf-freefont \
    udev \
    bash \
    curl

ENV PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser

# Copia Evolution API desde GitHub
WORKDIR /app
RUN git clone https://github.com/Atenea-Evolution/evolution-api.git . \
 && yarn install

EXPOSE 3000

CMD ["yarn", "start"]