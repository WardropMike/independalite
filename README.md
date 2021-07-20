# This was designed to run at these places in the code promotion pipeline:
## image of pipeline


###Links to trello tickets
# 1. Dockerized
## Link to Trello
## <a href="https://github.com/WardropMike/independalite/blob/master/Dockerfile">Docker File</a>
# 2. Tests
## A. Dropdown
### Link to Trello
### <a href="https://github.com/WardropMike/independalite/blob/master/Dockerfile">Docker File</a>
## B. Floating Menu
### Link to Trello
### <a href="https://github.com/WardropMike/independalite/blob/master/Dockerfile">Docker File</a>
## C. Context Menu
### Link to Trello
### <a href="https://github.com/WardropMike/independalite/blob/master/Dockerfile">Docker File</a>
## D. API Tests
### Link to Trello
### <a href="https://github.com/WardropMike/independalite/blob/master/Dockerfile">Docker File</a>
# 3. Tags
# 4. Run Time arguments
### <a href="https://github.com/WardropMike/independalite/blob/master/Dockerfile">Docker File</a>













# independalite
## APP This is a Demo of solutions to testing challenges
### Challenges:
## - 1. # of 2000+
## - 2.

##Setup Instructions
  Build the container with:
    docker build -t independalite .
  Just run the container:
    docker container run -it independalite
  Run the container and drop me a t a prompt:
    docker container run -it independalite /bin/bash


##To run tests:
docker container run -it independalite bundle exec rspec
bundle exec rspec --tag dropdown



How to run and look inside a running container

docker container run -it independalite /bin/bash

To run the docker and the specified tests
docker container run -it independalite bundle exec rspec -tag the_internet
