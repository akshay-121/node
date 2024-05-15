FROM node:13-alpine   
# install NODE

ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=password
#set variables

RUN mkdir -p /home/app
#create home folder
COPY ./app /home/app
#cop corrent folder files to /hom/app

# set default dir so that next commands executes in /home/app dir
WORKDIR /home/app

# will execute npm install in /home/app because of WORKDIR
RUN npm install

# no need for /home/app/server.js because of WORKDIR
CMD ["node", "server.js"]
# start the app with: node server.js

# CMD is important, this marks the entrypoint command 
# can have multiple RUN commands

