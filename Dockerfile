FROM xebialabs/xl-docker-demo-xlr:v6.0.0.1

MAINTAINER Joris De Winne <jdewinne@xebialabs.com>
ENV REFRESHED_AT 2016-11-15

RUN apk --update add openjdk8 bash libstdc++
ADD resources/command.sh /opt/xlr/command.sh
VOLUME /data
VOLUME /root/.gradle
WORKDIR /data

CMD ["sh","-x","/opt/xlr/command.sh"]
