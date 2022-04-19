FROM node:17.9.0-slim
ENV HOME=/home/app
RUN mkdir -p /var/www/app/node_modules && chown -R  node:node /var/www/app
WORKDIR /var/www/app
COPY package.json ./
RUN npm install
COPY . .
COPY --chown=node:node . .
USER node
EXPOSE 3020
CMD [ "node","index.js"]
ENTRYPOINT ["npm","start"]

