FROM ubuntu:18.04

COPY assets /assets
RUN /assets/setup.sh

EXPOSE 22
EXPOSE 1521
EXPOSE 8080

CMD /usr/sbin/startup.sh && tail -f /dev/null

RUN chmod o+rw /dev/null

ADD SCRIPT_CREATE_ALL.sql /docker-entrypoint-initdb.d/
