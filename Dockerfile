FROM node 

RUN mkdir /usr/src/app
WORKDIR /usr/src/app


ENV PATH /usr/src/app/node_modules/.bin:$PATH

COPY package*.json ./

RUN npm install 
# install all dependencies

COPY . /usr/src/app
# Copy all to new container

EXPOSE 4000
CMD ["npm","start"]