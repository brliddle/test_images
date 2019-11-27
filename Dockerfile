FROM registry.access.redhat.com/ubi7/ubi

RUN yum install iputils

ENTRYPOINT ["tail", "-f", "/dev/null"]
