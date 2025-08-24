# use base image
FROM node:18-alpine

# arg
ARG DEFAULT_PORT=80

# define env variables
ENV ENV 'development'
ENV PORT $DEFAULT_PORT


# set the correct working directory
WORKDIR /app

# copy package json and package lock
COPY package*.json /

# run ci 
RUN npm ci

# copy the rest of the files 
COPY . .

# expose port used in the app 
EXPOSE $PORT

# start the shit up 
CMD ["npm", "start"]
