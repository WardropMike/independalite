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

# Download and Setup Chrome
RUN curl -L -o google-chrome.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN dpkg -i google-chrome.deb
RUN sed -i 's|HERE/chrome\"|HERE/chrome\" --disable-setuid-sandbox|g' /opt/google/chrome/google-chrome
RUN rm google-chrome.deb

RUN BROWSER_MAJOR=$(google-chrome --version | sed 's/Google Chrome \([0-9]*\).*/\1/g') && \
    wget https://chromedriver.storage.googleapis.com/LATEST_RELEASE_${BROWSER_MAJOR} -O chrome_version && \
    wget https://chromedriver.storage.googleapis.com/`cat chrome_version`/chromedriver_linux64.zip && \
    unzip chromedriver_linux64.zip && \
    mv chromedriver /usr/local/bin/ && \
    DRIVER_MAJOR=$(chromedriver --version | sed 's/ChromeDriver \([0-9]*\).*/\1/g') && \
    echo "chrome version: $BROWSER_MAJOR" && \
    echo "chromedriver version: $DRIVER_MAJOR" && \
    if [ $BROWSER_MAJOR != $DRIVER_MAJOR ]; then echo "VERSION MISMATCH"; exit 1; fi

WORKDIR $APP_HOME

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

CMD ["bundle", "exec", "rspec", "--dry-run", "spec"]
