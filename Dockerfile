FROM alpine

RUN apk add --update ansible git openssh-client xz

RUN mkdir -p ~/.ssh \
    && ssh-keyscan -t rsa github.com > ~/.ssh/known_hosts

RUN mkdir -p /ansible/roles
WORKDIR /ansible

# Copy project into the container.
COPY . /ansible
