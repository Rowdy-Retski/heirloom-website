# Stage 1: Use a lightweight, official web server as the base
FROM nginx:alpine

# Stage 2: Copy all your website files (HTML, images, etc.)
# from your project folder into the web server's public directory inside the container.
COPY . /usr/share/nginx/html

# Stage 3: Tell Docker that the container will listen for traffic on port 80
EXPOSE 80

# Stage 4: Define the command to start the web server when the container runs
CMD ["nginx", "-g", "daemon off;"]