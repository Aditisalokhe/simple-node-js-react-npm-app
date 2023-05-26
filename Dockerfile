
# Base image
FROM node:14-alpine

# Set the working directory inside the container
WORKDIR /app

# Clone the React code from the GitHub repository
RUN apk add --no-cache git \
    && git clone https://github.com/jenkins-docs/simple-node-js-react-npm-app.git .

# Install dependencies
RUN npm install

# Build the React app
RUN npm run build


# Start the React app
CMD ["npm", "start"]
