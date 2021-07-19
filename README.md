# independalite
## APP This is a Demo of solutions to testing challenges
### Challenges:
## - 1. # of 2000+
## - 2. 

Setup Instructions
  Build the container with:
  docker build -t independalite .



To run tests:

bundle exec rspec --tag heroku
  Running local


How to run and look inside a running container

docker container run -it independalite /bin/bash

To run the docker and the specified tests
docker container run -it independalite bundle exec rspec -tag the_internet
