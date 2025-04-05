# Use a specific Node.js version (match exactly to avoid mismatched native modules)
FROM node:18.20.8

# Set working directory
WORKDIR /app

# Copy package files first for layer caching
COPY package*.json ./

# Install dependencies inside container
RUN npm install

# Copy application source
COPY . .

# Expose app port (change if needed)
EXPOSE 5000

# Run the app
CMD ["node", "server.js"]
