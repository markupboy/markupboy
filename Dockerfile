FROM ruby:3.2.1

# install node & npm
RUN curl -sL https://deb.nodesource.com/setup_lts.x | bash -\
	&& apt-get update -qq && apt-get install -qq --no-install-recommends \
	nodejs \
	&& apt-get upgrade -qq \
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/*

# Install aws-cli
RUN apt-get update

# Install middleman
RUN gem install middleman

# Set working dir
WORKDIR /app

CMD ["make"]
