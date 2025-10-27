# Step 1: Use lightweight Nginx image
FROM nginx:alpine

# Step 2: Copy your static files to Nginx html folder
COPY . /usr/share/nginx/html

# Step 3: Expose port 80
EXPOSE 80

# Step 4: Start Nginx
CMD ["nginx", "-g", "daemon off;"]
