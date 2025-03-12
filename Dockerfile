# Use an official Node.js runtime as a parent image
FROM node:18

# Set the working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json package.json ./
RUN npm install --only=production

# Copy the application code
COPY . .

# Expose the application port
EXPOSE 8080

# Start the application
CMD ["node", "index.js"]
