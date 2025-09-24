# Use Node.js lightweight image
FROM node:18-alpine

# Create app directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install --only=production

# Copy all files
COPY . .

# Expose app port
EXPOSE 3000

# Start the app
CMD ["node", "index.js"]
