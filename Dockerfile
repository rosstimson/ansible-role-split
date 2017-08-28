FROM alpine

RUN apk add --update ansible xz

RUN mkdir -p /ansible/roles
WORKDIR /ansible

# Copy project into the container.
COPY . /ansible
