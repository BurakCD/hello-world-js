FROM node:20.8-alpine
ENV APP_HOME=/app
WORKDIR ${APP_HOME}
COPY index.js ${APP_HOME}
COPY package.json ${APP_HOME}
RUN npm install
EXPOSE 5000
CMD ["node", "index.js"]
