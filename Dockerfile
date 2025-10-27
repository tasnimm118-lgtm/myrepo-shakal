# Step 1: Use lightweight Node.js base image
FROM node:18-alpine

# Step 2: Set working directory
WORKDIR /app

# Step 3: Copy package.json and package-lock.json (if exists)
COPY package*.json ./

# Step 4: Install only production dependencies
RUN npm install --only=production

# Step 5: Copy the rest of the app
COPY . .

# Step 6: Build your frontend if needed (uncomment if you use build step)
# RUN npm run build

# Step 7: Expose port
EXPOSE 3000

# Step 8: Start the app
CMD ["npm", "start"]
