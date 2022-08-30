FROM openjdk:12

# create new app directory for application files
#this directory will live inside the container not the host machine
RUN mkdir /app

# copy files from host into the image filesystem
COPY out/production/HelloWorldDocker  /app

# Set the directiry where i will execute future commands
WORKDIR /app

# action to be executed when container is started, in this case run the main method
CMD java com.company.Main