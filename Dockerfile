FROM ruby:3.0.1

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

WORKDIR $APP_HOME

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

CMD ["bundle exec rspec --dry-run"]

# Update and Install Dependencies

# Install headless chrome & selenium
# get and install openjdk - headless
# Install selenium
# Set Command to run server ?To be handled here?
# CMD ["/usr/local/bin/start-selenium-server.sh"]

# Download and Setup Chrome
# Set up Chromedriver Environment variables
# Copy framework and deps to local dir
# Define working directory
# Install Bundler
# Setup Gem paths
# Unsetting Bundle config
# Run Tests
# CMD Override when needed
# CMD ['bundle', 'exec', 'rspec']
