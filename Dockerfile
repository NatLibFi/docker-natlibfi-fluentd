FROM fluent/fluentd:v1.3
USER root
ENTRYPOINT ["/usr/bin/fluentd"]
CMD ["--no-supervisor", "-c", "/fluentd/etc/fluent.conf", "-p", "/fluentd/plugins"]

COPY fluent.conf /fluentd/etc/fluent.conf