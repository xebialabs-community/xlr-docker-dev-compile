FROM xebialabs/xl-docker-demo-xlr:v7.2.0.1

MAINTAINER XebiaLabs <info@xebialabs.com>
ENV REFRESHED_AT 2017-10-03

RUN apk --update add openjdk8 bash libstdc++
ADD resources/command.sh /opt/xlr/command.sh
VOLUME /data
VOLUME /root/.gradle
WORKDIR /data

CMD ["sh","-x","/opt/xlr/command.sh"]
