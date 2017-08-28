FROM alpine

RUN apk add --update ansible git xz

RUN mkdir -p /ansible/roles
WORKDIR /ansible

# Copy project into the container.
COPY . /ansible
