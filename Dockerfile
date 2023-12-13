# Use Node.js 18.x.x LTS image
FROM node:18

# Set working directory in the container
WORKDIR /app

# Copy package.json and yarn.lock to the container
COPY package.json yarn.lock ./

# Install application dependencies
RUN yarn install --frozen-lockfile

# Add the application code to the container
COPY . .

# Expose port 3000
EXPOSE 3000

# Start the application
CMD ["yarn", "start"]
