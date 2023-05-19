# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install the application dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Set environment variables (replace with your Back4App credentials)
ENV BACK4APP_APP_ID=a6898a76-c3f2-49b7-b9ff-cc181b148429

# Expose the port your application will listen on
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
