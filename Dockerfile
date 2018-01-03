FROM xebialabs/xl-docker-demo-xlr:v7.5.0.1

MAINTAINER XebiaLabs <info@xebialabs.com>
ENV REFRESHED_AT 2018-01-03
ENV JYTHON_VERSION 2.7.0

RUN apk --update add openjdk8 bash libstdc++
RUN wget -O jython-installer-${JYTHON_VERSION}.jar \
 "http://search.maven.org/remotecontent?filepath=org/python/jython-installer/${JYTHON_VERSION}/jython-installer-${JYTHON_VERSION}.jar" \
 && java -jar jython-installer-${JYTHON_VERSION}.jar -s -t minimum -i mod -i ensurepip -d /usr/local/jython-${JYTHON_VERSION} \
 && rm -f jython-installer-${JYTHON_VERSION}.jar \
 && ln -s /usr/local/jython-${JYTHON_VERSION}/bin/* /usr/local/bin/ 

ADD resources/command.sh /opt/xlr/command.sh
VOLUME /data
VOLUME /root/.gradle
WORKDIR /data

CMD ["sh","-x","/opt/xlr/command.sh"]
