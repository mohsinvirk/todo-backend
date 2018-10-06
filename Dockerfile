# Ultimate todo app for panacloud bootcamp
# Linux x64
FROM alpine

LABEL maintainer="mohsinlatifvirk@gmail.com"

# Install Node and NPM
RUN apk add --update nodejs nodejs-npm

# Copy app to /src
COPY . /src

WORKDIR /src

# Install dependencies
RUN  npm install

EXPOSE 3000

ENTRYPOINT ["node", "./dist/server.js"]
