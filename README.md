# independalite
## APP This is a Demo of solutions to testing challenges in a ruby test framework
### Challenges:
## - 1. # of 2000+
## - 2. Context Menu
## - 3. Floating Menu
## - 4. Dropdown

# This was designed to run at these places in the code promotion pipeline:
## image of pipeline
##Images
# <img src="https://github.com/WardropMike/independalite/blob/master/proj_docs/Framework_Pipeline_Services.png"
#    alt="Markdown Monster icon"
#    align="center">
#    style="float: left; margin-right: 10px;" />
# <img src="https://github.com/WardropMike/independalite/blob/master/proj_docs/Framework_Does_Ideal.png"
#    alt="Markdown Monster icon"
#    align="center">
#    style="float: left; margin-right: 10px;" />

###Links to trello tickets
# 0. Scaffold Running Framework, 4 - 8 running tests, Folder Struct and tune..
# <a href="https://github.com/WardropMike/independalite">Framework Codebase</a>
# <a href="https://trello.com/c/WJZw7RQE/1-scaffold-running-framework">Setup Framework</a>
# <a href="https://trello.com/c/Mk9ODRID/2-write-2-4-running-tests">Tests and test Framework Codebase</a>
# <a href="https://trello.com/c/lhN9Eqbu/3-write-2-4-api-tests">Tests and test Framework Codebase Network</a>
# <a href="https://trello.com/c/VlPFOYI9/4-folder-structure-organization">Organize Framework Codebase</a>
# <a href="https://trello.com/c/jYbMVTI8/5-trim-gem-list-and-utilized-gems">Tune Framework Codebase</a>



# 1. Dockerized
# Link to Trello:
# <a href="https://trello.com/c/xk6L7BXm/6-fix-and-clean-spec-helper">Trello Fix and Clean Spec Helper</a>
# <a href="https://trello.com/c/xk6L7BXm/6-fix-and-clean-spec-helper">Fix and Cleam up Spec Helper</a>
# <a href="https://trello.com/c/ZW4inyfZ/7-re-write-dockerfile-clean-up-verify-running">Trello Dockerfile Clean up and Verify</a>
# <a href="https://trello.com/c/ZW4inyfZ/7-re-write-dockerfile-clean-up-verify-running">Verify Dockerfile</a>
# <a href="https://github.com/WardropMike/independalite/blob/master/Dockerfile">Docker File</a>
# <a href="https://github.com/WardropMike/independalite/blob/master/spec/spec_helper.rb">Spec Helper</a>
# <a href="https://github.com/WardropMike/independalite/blob/master/Dockerfile">Re-write Dockerfile</a>
# 2. Tests
## A. Dropdown
### Link to TrelloL <a href="https://trello.com/c/sOBOhdA9/11-complete-third-challenge-test-dropdown-select">Dropdown test task</a>
### <a href="https://github.com/WardropMike/independalite/blob/master/spec/component_2/functions/heroku_challenge_spec.rb">Dropdown Test</a>
## B. <a href="https://trello.com/c/ulrgczoE/10-complete-second-challenge-test-float-menu">Floating Menu</a>
### Link to Trello
### <a href="https://github.com/WardropMike/independalite/blob/master/spec/component_2/functions/heroku_challenge_two_spec.rb">Floating Menu</a>
## C. <a href="https://trello.com/c/fRTs1cJG/9-complete-first-challenge-test-context-menu">Context Menu</a>
### Link to Trello
### <a href="https://github.com/WardropMike/independalite/blob/master/spec/component_2/functions/heroku_challenge_two_spec.rb">Context Menu</a>
## D. API Tests
### Link to Trello
### <a href="https://github.com/WardropMike/independalite/blob/master/spec/component_1/functions/check_component_1_spec.rb">API Tests</a>
# 3. Tags
# 4. Run Time arguments
### <a href="https://github.com/WardropMike/independalite/blob/master/spec/spec_helper.rb">Spec Helper</a>
# 5. Documentation:
### <a href="https://trello.com/c/0f0sYUkD/12-write-documentation">Write documentation</a>
# 6. Upcoming updates next steps
### <a href="https://trello.com/c/kTai02eE/8-re-write-browser-major-in-dockerfile-works-for-now-break-into-docker-compose-esk-style">Upcoming updates next steps</a>


##Setup Instructions
  Build the container with:
    docker build -t independalite .
  Just run the container:
    docker container run -it independalite
  Run the container and drop me at a prompt:
    docker container run -it independalite /bin/bash


##To run tests:
docker container run -it independalite bundle exec rspec
bundle exec rspec --tag the_internet
bundle exec rspec --tag dropdown
bundle exec rspec --tag context_menu
bundle exec rspec --tag floating_menu


How to run and look inside a running container

docker container run -it independalite /bin/bash

To run the docker and the specified tests
docker container run -it independalite bundle exec rspec -tag the_internet
