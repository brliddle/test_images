FROM registry.redhat.io/ubi7/ubi

USER 1001

ENTRYPOINT ["tail", "-f", "/dev/null"]
