#https://github.com/hawkular/hawkular.github.io/blob/pages/docker/Dockerfile

FROM fedora/apache
MAINTAINER Jiri Kremser <jkremser@redhat.com>

WORKDIR /tmp

RUN yum --quiet -y install git && rm -rf /var/cache/yum \
   && git clone --quiet --depth=1 -b master https://github.com/hawkular/hawkular.github.io \
   && yum --quiet -y remove git && rm -rf /var/cache/yum \
   && mv hawkular.github.io/* /var/www/html/

EXPOSE 80
ENTRYPOINT ["/run-apache.sh"]
