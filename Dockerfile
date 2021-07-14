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
  xdg-utils \
  libxcomposite1 -y \
  libappindicator1 fonts-liberation -y \
  dbus-x11 xfonts-base xfonts-100dpi xfonts-75dpi xfonts-cyrillic xfonts-scalable -y \
  libxss1 lsb-release xdg-utils -y \
  libgbm1 -y \
  gconf-service \
  curl \
  git \
  libpq-dev

# Download and Setup Chrome
RUN curl -L -o google-chrome.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN dpkg -i google-chrome.deb
RUN sed -i 's|HERE/chrome\"|HERE/chrome\" --disable-setuid-sandbox|g' /opt/google/chrome/google-chrome
RUN rm google-chrome.deb

# Copy framework and deps to local dir
ADD . . $APP_HOME

# Define working directory.
# RUN mkdir $APP_HOME
WORKDIR $APP_HOME

# Setup Gem paths
ENV GEM_HOME="$APP_HOME/bin/sh"
ENV PATH $GEM_HOME/bin/sh:$GEM_HOME/gems/bin:$PATH

# Install Bundler
RUN gem install bundler:1.17.2
RUN bundle install

# Unsetting Bundle config
# RUN unset BUNDLE_PATH
# RUN unset BUNDLE_BIN
