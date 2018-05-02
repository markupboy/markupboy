FROM ruby:2.5.1-alpine

# Install prereqs
RUN apk --update add alpine-sdk nodejs

# Fix timezone
RUN apk add --update tzdata
ENV TZ=America/Denver

# Install middleman
RUN gem install middleman

# Install yarn and easily get it into PATH with a symlink
ADD https://github.com/yarnpkg/yarn/releases/download/v1.5.1/yarn-1.5.1.js /usr/local/bin/yarn
RUN chmod +x /usr/local/bin/yarn

# Set working dir
WORKDIR /app

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile && yarn cache clean

# COPY Gemfile Gemfile.lock ./
# RUN bundle install

# do work, son
COPY . .
RUN bundle install


CMD ["middleman", "server"]
