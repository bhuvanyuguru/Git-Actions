# Use Apache httpd base image
FROM httpd:2.4

# Copy a simple hello world HTML file into Apache's default directory
RUN echo "Hello, World from Docker HTTPD on port 8080!" > /usr/local/apache2/htdocs/index.html

# Expose port 8080 instead of default 80
EXPOSE 8080

# Modify httpd.conf to listen on port 8080
RUN sed -i 's/Listen 80/Listen 8080/' /usr/local/apache2/conf/httpd.conf

CMD ["httpd-foreground"]
