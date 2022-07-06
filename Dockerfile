# node version
FROM node:16.13.1

# copies the server package
COPY src/server/ ./

# working directory = src/server.
# running npm start or node app.js now works as normal
WORKDIR ./

# runs npm install
RUN npm install

# env variables
ENV PORT=4000
ENV USERNAME=
ENV PASSWORD=
ENV HOST='localhost'

# actually forwards the port
EXPOSE 4000

# the command run. an array of strings
CMD [ "npm", "start" ]