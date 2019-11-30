FROM registry.access.redhat.com/ubi7/ubi

RUN apt-get update && \
      apt-get -y install sudo

RUN useradd -m manager && echo "manager:manager" | chpasswd && adduser manager sudo

USER manager

ENTRYPOINT ["tail", "-f", "/dev/null"]
