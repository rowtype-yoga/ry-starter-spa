FROM node:12

# Create app directory
WORKDIR /usr/src/app

RUN mkdir node_modules output

# Copy server code
COPY ui-server/node_modules node_modules/ 
COPY ui-server/output output/ 
COPY ui-server/index.js ./

# Copy frontend bundle
COPY dist/bundle.js dist/bundle.js.gz ./

# Make sure the port is accessible
EXPOSE 55555

CMD [ "node", "index.js" ]
