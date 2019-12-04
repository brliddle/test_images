FROM registry.access.redhat.com/ubi7/ubi

RUN yum install sudo -y

RUN useradd -m manager && echo "manager:manager" | chpasswd && groupadd sudo && usermod -aG sudo manager

RUN chmod 4755 /bin/su 

USER manager

ENTRYPOINT ["tail", "-f", "/dev/null"]
