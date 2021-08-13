FROM ruby:2.5.1-alpine

# Install prereqs
RUN apk --update add alpine-sdk nodejs

# Install aws-cli
RUN \
	mkdir -p /aws && \
	apk -Uuv add groff less python python-dev py-pip && \
	pip install awscli && \
	apk --purge -v del py-pip && \
	rm /var/cache/apk/*

# Fix timezone
RUN apk add --update tzdata
ENV TZ=America/Denver

# Install middleman
RUN gem install middleman

# Set working dir
WORKDIR /app

CMD ["make"]
