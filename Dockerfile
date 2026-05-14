FROM httpd

# Install Apache
RUN apt-get update && \
    apt-get install -y apache2 && \
    apt-get clean

COPY index.html /usr/local/apache2/htdocs/
# Expose port 80
EXPOSE 80

# Run Apache in the foreground
CMD ["apache2ctl", "-D", "FOREGROUND"]

