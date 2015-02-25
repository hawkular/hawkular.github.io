#https://github.com/hawkular/hawkular.github.io/tree/master/docker

FROM fedora/apache
MAINTAINER Jiri Kremser <jkremser@redhat.com>

WORKDIR /tmp
RUN yum --quiet -y install git && rm -rf /var/cache/yum
RUN git clone --quiet --depth=1 https://github.com/hawkular/hawkular.github.io
RUN mv hawkular.github.io/* /var/www/html/

EXPOSE 80
ENTRYPOINT ["/run-apache.sh"]
