# pull official base image
FROM node:16.18.0-alpine

# set working directory
WORKDIR /app


# install app dependencies
COPY package.json ./
COPY package-lock.json ./
RUN npm install 

# add app
COPY . ./

#PORT
EXPOSE 3000
# start app
CMD ["npm", "start"]

