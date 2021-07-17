FROM ruby:3.0.1

# throw errors if Gemfile has been modified since Gemfile.lock
# RUN bundle config --global frozen 1

# Update and Install Dependencies
RUN apt-get update \
  && apt-get install libxi6 \
  libnss3 \
  libgconf-2-4 \
  fonts-liberation \
  libappindicator3-1 \
  libasound2 \
  libatk-bridge2.0-0 \
  libatk1.0-0 \
  libcups2 \
  libgtk-3-0 \
  libx11-xcb1 \
  libxss1 \
  lsb-release \
  xvfb \
  xdg-utils \
  libxcomposite1 -y \
  libappindicator1 fonts-liberation -y \
  dbus-x11 xfonts-base xfonts-100dpi xfonts-75dpi xfonts-cyrillic xfonts-scalable -y \
  libxss1 lsb-release xdg-utils -y \
  libgbm1 -y \
  gconf-service \
  dpkg \
  curl \
  git \
  wget \
  libpq-dev \
  unzip

# Download and Setup Chrome
RUN curl -L -o google-chrome.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN dpkg -i google-chrome.deb
RUN sed -i 's|HERE/chrome\"|HERE/chrome\" --disable-setuid-sandbox|g' /opt/google/chrome/google-chrome
RUN rm google-chrome.deb

# Install chromedriver for Selenium
# RUN curl https://chromedriver.storage.googleapis.com/2.31/chromedriver_linux64.zip -o /usr/local/bin/chromedriver
# RUN chmod +x /usr/local/bin/chromedriver




WORKDIR $APP_HOME

# COPY /spec/support/chromedriver /usr/local/bundle/bin/
COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .


CMD ["bundle", "exec", "rspec", "--dry-run", "spec"]


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
