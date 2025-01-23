# Use a lightweight web server
FROM nginx:alpine
# Remove the default Nginx configuration
RUN rm -rf /usr/share/nginx/html/*
# Copy your frontend application files to the Nginx web server directory
COPY . /usr/share/nginx/html
# Expose port 80 for the application
EXPOSE 81
# Start the Nginx server
CMD ["nginx", "-g", "daemon off;"]
