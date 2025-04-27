# Dockerfile
FROM node:18-alpine

WORKDIR /app

# Install FFmpeg (required for fluent-ffmpeg)
RUN apk add --no-cache ffmpeg

COPY package*.json ./
RUN npm install --production

COPY . .

EXPOSE 3000
CMD ["npm", "start"]
