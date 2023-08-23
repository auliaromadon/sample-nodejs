FROM node:18-alpine
WORKDIR /home/node
USER node
COPY --chown=node:node ./package* ./
RUN npm install
COPY --chown=node:node ./ ./
ENV NODE_ENV=development

EXPOSE 5000
CMD [ "node", "server.js" ]
