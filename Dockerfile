FROM ruby:3.0.1

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
