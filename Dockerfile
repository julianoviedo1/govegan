FROM ruby
RUN mkdir /govegan
WORKDIR /govegan

ENV NVM_DIR /usr/local/nvm
ENV NODE_VERSION 14.4.0

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - \
    && apt-get install -y nodejs \
    && npm install -g yarn

ADD package.json yarn.lock ./
RUN yarn install
ADD Gemfile .
RUN bundle install
ADD config ./config
ADD Rakefile config.ru .env ./
RUN rake app:update:bin
ADD app ./app

ENTRYPOINT [ "rails", "s", "-p", "3000", "-b", "0.0.0.0" ]

# FROM node AS node
# ADD package.json yarn.lock ./
# RUN npm install -g yarn webpack
# RUN yarn
# RUN webpack -o /bundles

# FROM ruby
# RUN mkdir /govegan
# WORKDIR /govegan
# ENV NVM_DIR /usr/local/nvm
# ENV NODE_VERSION 14.4.0

# RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - \
#     && apt-get install -y nodejs \
#     && npm install -g yarn

# ADD package.json yarn.lock ./
# RUN yarn install

# ADD Gemfile .
# RUN bundle install
# ADD config ./config
# ADD Rakefile config.ru .env ./
# RUN rake app:update:bin
# ADD app ./app
# COPY --from=node /bundles ./bundles
# ENTRYPOINT [ "rails", "s", "-p", "3000", "-b", "0.0.0.0" ]