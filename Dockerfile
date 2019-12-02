FROM registry.access.redhat.com/ubi7/ubi

RUN yum install sudo -y

RUN useradd -m manager && echo "manager:manager" | chpasswd && usermod -aG sudo manager

USER manager

ENTRYPOINT ["tail", "-f", "/dev/null"]
