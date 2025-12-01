
FROM node:16-alpine
WORKDIR /app
COPY calculator.js /app
CMD ["node","calculator.js"]

FROM redis:latest
CMD ["redis-server"]

# 1. Base image
FROM nginx:alpine

# 2. Set working directory (optional for nginx, but good style)
WORKDIR /usr/share/nginx/html

# 3. Copy our web page into the image
COPY index.html /usr/share/nginx/html/index.html

# 4. Expose container port 80
EXPOSE 80

# 5. Default command (already defined in nginx image; this line is optional)
CMD ["nginx", "-g", "daemon off;"]



FROM <base-image>
WORKDIR /app
COPY . /app
RUN <install/compile commands>
EXPOSE <port>
CMD ["executable", "arg1", "arg2"]

