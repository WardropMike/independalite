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
  gconf-service

# Download and Setup Chrome
RUN curl -L -o google-chrome.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN dpkg -i google-chrome.deb
RUN sed -i 's|HERE/chrome\"|HERE/chrome\" --disable-setuid-sandbox|g' /opt/google/chrome/google-chrome
RUN rm google-chrome.deb

# Define working directory.
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

# Install Bundler
RUN gem install bundler:1.17.2
RUN bundle install

#********Start Maven and Java Install******
# Pull base image.
FROM alpine as build

ARG MAVEN_VERSION=3.6.3
ARG USER_HOME_DIR="$APP_HOME"
ARG BASE_URL=https://www.apache.org/dist/maven/maven-3/${MAVEN_VERSION}/binaries

# Install Java.
RUN apk --update --no-cache add openjdk9 curl

RUN mkdir -p /share/maven /share/maven/ref \
 && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz \
 && tar -xzf /tmp/apache-maven.tar.gz -C /share/maven --strip-components=1 \
 && rm -f /tmp/apache-maven.tar.gz \
 && ln -s /share/maven/bin/mvn /bin/mvn

ENV MAVEN_HOME /share/maven
ENV MAVEN_CONFIG "$USER_HOME_DIR/.m2"

# Define commonly used JAVA_HOME variable
# ENV JAVA_HOME /lib/jvm/default-jvm/

# Define default command
WORKDIR $APP_HOME
CMD ["mvn test", "--version"]
#******End Maven and Java Install*****

# Unsetting Bundle config
RUN unset BUNDLE_PATH
RUN unset BUNDLE_BIN

# Setup Gem paths
ENV GEM_HOME="$APP_HOME/bin/sh"
ENV PATH $GEM_HOME/bin/sh:$GEM_HOME/gems/bin:$PATH

# Copy framework and deps to local dir
ADD . . $APP_HOME
