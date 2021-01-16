FROM ubuntu:latest

 
#
# Update the image to the latest packages
RUN apt-get update -y
 
#
# Install NGINX to test.
RUN apt-get install httpd -y
 
#
# Expose port 80
EXPOSE 80
 
#
# Last is the actual command to start up NGINX within our Container
CMD ["httpd", "-g", "daemon off;"]
