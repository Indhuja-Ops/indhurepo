# Use a lightweight Linux distribution as the base image
FROM alpine:latest

# Install Nginx
RUN apk update && \
    apk add nginx && \
    rm -rf /var/cache/apk/*

# Copy the Nginx configuration file
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
