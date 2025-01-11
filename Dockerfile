# Use a lightweight web server
FROM nginx:alpine

# Copy the static site files into the container
COPY ./public /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
