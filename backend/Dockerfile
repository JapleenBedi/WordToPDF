FROM node:18

# Install PhantomJS dependencies
RUN apt-get update && apt-get install -y libfontconfig

# Set the working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the app
COPY . .

# Ensure PhantomJS binary exists
RUN npm rebuild phantomjs-prebuilt --update-binary

# Create necessary directories
RUN mkdir -p /app/uploads /app/files

# Expose the port and start the application
EXPOSE 3000
CMD ["npm", "start"]
