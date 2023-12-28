# Use the official Jekyll builder image as the base image
FROM jekyll/builder:latest

# Set the working directory to the Jekyll site root directory
WORKDIR /srv/jekyll

# Copy the contents of the local project directory to the container
COPY . .

# Set permissions for the Jekyll site directory
RUN chmod -R 777 /srv/jekyll

# Build the Jekyll site
RUN jekyll build --future

# Set the entry point to serve the Jekyll site (optional)
# ENTRYPOINT ["jekyll", "serve"]

# The default command to run when the container starts
CMD ["echo", "Docker container is running"]
