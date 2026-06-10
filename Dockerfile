# Use the lightweight Nginx Alpine base image
FROM nginx:alpine

# Copy the standalone HTML file to the default Nginx public folder
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 for web traffic
EXPOSE 80

# Start Nginx server in the foreground
CMD ["nginx", "-g", "daemon off;"]
