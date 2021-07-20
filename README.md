# independalite
## APP This is a Demo of solutions to testing challenges in a ruby test framework
 Challenges:
 1. Number of 2000+ Tests
 2. Context Menu
 3. Floating Menu
 4. Dropdown

* This was designed to run at these places in the code promotion pipeline:

* Services from framework:
![alt text](<img href="https://github.com/WardropMike/independalite/blob/master/proj_docs/Framework_Pipeline_Services.png" alt="Services from framework:" align="center"> style="float: left; margin-right: 10px;" />)
* What a framework does ideal goal:
![alt text](<img href="https://github.com/WardropMike/independalite/blob/master/proj_docs/Framework_Does_Ideal.png" alt="What a framework does ideal goal:" :align="center"> style="float: left; margin-right: 10px;" />)

# Development tickets
* Story: Scaffold Running Framework, 4 - 8 running tests, Folder Struct and tune
 1. <a href="https://github.com/WardropMike/independalite">Framework Codebase (Git Link)</a>
 2. <a href="https://trello.com/c/WJZw7RQE/1-scaffold-running-framework">Setup Framework Ticket</a>
 3. <a href="https://trello.com/c/Mk9ODRID/2-write-2-4-running-tests">Tests and test Framework Codebase Ticket</a>
4. <a href="https://trello.com/c/lhN9Eqbu/3-write-2-4-api-tests">Tests and test Framework Codebase Network Ticket</a>
5. <a href="https://trello.com/c/VlPFOYI9/4-folder-structure-organization">Organize Framework Codebase Ticket</a>
6. <a href="https://trello.com/c/jYbMVTI8/5-trim-gem-list-and-utilized-gems">Tune Framework Codebase Ticket</a>

# Dockerized
1. <a href="https://trello.com/c/xk6L7BXm/6-fix-and-clean-spec-helper">Trello Fix and Clean Spec Helper Ticket</a>
2. <a href="https://trello.com/c/xk6L7BXm/6-fix-and-clean-spec-helper">Fix and Cleam up Spec Helper Ticket</a>
3. <a href="https://trello.com/c/ZW4inyfZ/7-re-write-dockerfile-clean-up-verify-running">Trello Dockerfile Clean up and Verify Ticket</a>
4. <a href="https://trello.com/c/ZW4inyfZ/7-re-write-dockerfile-clean-up-verify-running">Verify Dockerfile Ticket</a>
5. <a href="https://github.com/WardropMike/independalite/blob/master/Dockerfile">Docker File (Git Link)</a>
6. <a href="https://github.com/WardropMike/independalite/blob/master/spec/spec_helper.rb">Spec Helper</a>
7. <a href="https://github.com/WardropMike/independalite/blob/master/Dockerfile">Re-write Dockerfile (Git Link)</a>

# Tests
-1. Ticket <a href="https://trello.com/c/sOBOhdA9/11-complete-third-challenge-test-dropdown-select">Dropdown test task Ticket</a>
 -a. <a href="https://github.com/WardropMike/independalite/blob/master/spec/component_2/functions/heroku_challenge_spec.rb">Dropdown Test (Git Link)</a>
-2. Ticket <a href="https://trello.com/c/ulrgczoE/10-complete-second-challenge-test-float-menu">Floating Menu (Git Link)</a>
 -b. <a href="https://github.com/WardropMike/independalite/blob/master/spec/component_2/functions/heroku_challenge_two_spec.rb">Floating Menu (Git Link)</a>
-3. <a href="https://trello.com/c/fRTs1cJG/9-complete-first-challenge-test-context-menu">Context Menu Ticket</a>
 -c. <a href="https://github.com/WardropMike/independalite/blob/master/spec/component_2/functions/heroku_challenge_two_spec.rb">Context Menu (Git Link)</a>
# API Tests
-1. <a href="https://github.com/WardropMike/independalite/blob/master/spec/component_1/functions/check_component_1_spec.rb">API Tests (Git Link)</a>
-2. Tags
-3. Run Time arguments
 -a. <a href="https://github.com/WardropMike/independalite/blob/master/spec/spec_helper.rb">Spec Helper (Git Link)</a>
# Documentation:
-1. <a href="https://trello.com/c/0f0sYUkD/12-write-documentation">Write documentation Ticket</a>
# Upcoming updates next steps
-1. <a href="https://trello.com/c/kTai02eE/8-re-write-browser-major-in-dockerfile-works-for-now-break-into-docker-compose-esk-style">Upcoming updates next steps Ticket</a>

# Setup Instructions
  Build the container with:
    docker build -t independalite .
  Just run the container:
    docker container run -it independalite
  Run the container and drop me at a prompt:
    docker container run -it independalite /bin/bash
  To run tests:
    docker container run -it independalite bundle exec rspec
    bundle exec rspec --tag the_internet
    bundle exec rspec --tag dropdown
    bundle exec rspec --tag context_menu
    bundle exec rspec --tag floating_menu
  How to run and look inside a running container
    docker container run -it independalite /bin/bash
  To run the docker and the specified tests
    docker container run -it independalite bundle exec rspec -tag the_internet
