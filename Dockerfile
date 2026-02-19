# Dockerfile
FROM node:20-alpine
WORKDIR /app

COPY package*.json ./
RUN npm ci

COPY . .
EXPOSE 8081

# make sure your start script binds to 0.0.0.0
CMD ["npm","run","start","--","--host","0.0.0.0","--port","8081"]
