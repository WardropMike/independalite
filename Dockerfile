FROM ruby:3.0.1

# Update and Install Dependencies

RUN apt-get update \
  && apt-get install libxi6 \
  dpkg \
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
  curl \
  git \
  wget \
  libpq-dev \
  unzip

  # chromium-chromedriver

# Install headless chrome & selenium
RUN wget --no-check-certificate -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
ADD http://chromedriver.storage.googleapis.com/2.13/chromedriver_linux64.zip /srv/
RUN unzip /srv/chromedriver_linux64.zip -d /srv
# RUN echo deb http://dl.google.com/linux/chrome/deb/ stable main >> /etc/apt/sources.list.d/google-chrome.list

RUN apt-get update \
  && apt-get install -q -y openjdk-11-jdk-headless


# ADD ./install /
ADD http://selenium-release.storage.googleapis.com/2.44/selenium-server-standalone-2.44.0.jar /srv/

EXPOSE 4444

# CMD ["/usr/local/bin/start-selenium-server.sh"]


# Download and Setup Chrome
RUN curl -L -o google-chrome.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN dpkg -i google-chrome.deb
RUN sed -i 's|HERE/chrome\"|HERE/chrome\" --disable-setuid-sandbox|g' /opt/google/chrome/google-chrome
RUN rm google-chrome.deb

# Set up Chromedriver Environment variables
# ENV CHROMEDRIVER_VERSION 2.19
# ENV CHROMEDRIVER_DIR /chromedriver
# RUN mkdir $CHROMEDRIVER_DIR

# Copy framework and deps to local dir
ADD . . $APP_HOME

# Define working directory.
# RUN mkdir $APP_HOME
WORKDIR $APP_HOME

# Install Bundler
RUN gem update --system
RUN gem install bundler:2.2.21
RUN bundle install
# RUN bundle install --path .bundle


# Setup Gem paths
ENV GEM_HOME="$APP_HOME/bin/sh"
ENV PATH $GEM_HOME/bin/sh:$GEM_HOME/gems/bin:$PATH

# Unsetting Bundle config
RUN unset BUNDLE_PATH
RUN unset BUNDLE_BIN

# Run Tests
# CMD Override when needed
CMD ['bundle', 'exec', 'rspec']

# Set Working Dir
WORKDIR $APP_HOME
