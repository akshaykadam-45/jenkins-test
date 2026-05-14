FROM httpd


COPY index.html /usr/local/apache2/htdocs/
# Expose port 80
EXPOSE 80

# Run Apache in the foreground
CMD ["apache2ctl", "-D", "FOREGROUND"]

