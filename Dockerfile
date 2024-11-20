# Use an official NGINX image as the base image
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy your index.html and other assets into the NGINX default directory
COPY index.html ./

# Expose port 80 to access the web server
EXPOSE 80

# Start NGINX server
CMD ["nginx", "-g", "daemon off;"]
