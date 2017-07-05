FROM xebialabs/xl-docker-demo-xlr:v7.0.1.1

MAINTAINER XebiaLabs <info@xebialabs.com>
ENV REFRESHED_AT 2017-07-05

RUN apk --update add openjdk8 bash libstdc++
ADD resources/command.sh /opt/xlr/command.sh
VOLUME /data
VOLUME /root/.gradle
WORKDIR /data

CMD ["sh","-x","/opt/xlr/command.sh"]
