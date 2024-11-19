# Use official Node.js image as the base
FROM node:16

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the package.json and install dependencies
COPY demo-app/package*.json ./
RUN npm install

# Copy the rest of the app code into the container
COPY demo-app/ .

# Expose the application port
EXPOSE 8080

# Start the application
CMD ["npm", "start"]
