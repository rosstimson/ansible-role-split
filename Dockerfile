FROM alpine

RUN apk add --update ansible git openssh-client xz

RUN mkdir -p /ansible/roles
WORKDIR /ansible

# Copy project into the container.
COPY . /ansible
