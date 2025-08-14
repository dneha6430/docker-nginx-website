# 1) Start from a tiny Linux with Nginx preinstalled
FROM nginx:alpine

# 2) Put our website file where Nginx serves from
COPY index.html /usr/share/nginx/html/index.html

# 3) Document the listening port (informational)
EXPOSE 80
# Nginx starts automatically via the base image's default CMD
