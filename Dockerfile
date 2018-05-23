FROM ubuntu:18.04

MAINTAINER Klaus Klein <klauswk1@gmail.com>

ADD assets /assets
RUN /assets/setup.sh

EXPOSE 22
EXPOSE 1521
EXPOSE 8080

CMD /usr/sbin/startup.sh && tail -f /dev/null
