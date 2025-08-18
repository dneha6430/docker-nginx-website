# Use the official Nginx image
FROM nginx:alpine

# Copy your website content into the default Nginx web folder
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Nginx will automatically start from the base image
