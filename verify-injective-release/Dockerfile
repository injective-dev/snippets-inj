FROM ubuntu:22.04

COPY libwasmvm.x86_64.so /usr/lib/libwasmvm.x86_64.so
COPY injectived /usr/bin/injectived
COPY peggo /usr/bin/peggo

RUN chmod +x /usr/bin/injectived
RUN chmod +x /usr/bin/peggo

CMD ["sh", "-c", "echo 'injectived version' && /usr/bin/injectived version && echo 'peggo version' && /usr/bin/peggo version"]
