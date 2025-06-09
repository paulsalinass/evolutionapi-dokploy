FROM node:18-alpine

# Instalar dependencias necesarias, incluyendo git
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

# Clonar evolución API e instalar dependencias
WORKDIR /app
RUN git clone https://github.com/Atenea-Evolution/evolution-api.git . \
 && yarn install

EXPOSE 3000

CMD ["yarn", "start"]
