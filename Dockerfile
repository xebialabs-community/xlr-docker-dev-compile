ARG xlr_tag
FROM xebialabs/xl-release:$xlr_tag

ENV JYTHON_VERSION 2.7.0

USER root
RUN apt-get update && apt-get install -y bash libstdc++ wget
RUN wget -O jython-installer-${JYTHON_VERSION}.jar \
 "http://search.maven.org/remotecontent?filepath=org/python/jython-installer/${JYTHON_VERSION}/jython-installer-${JYTHON_VERSION}.jar" \
 && java -jar jython-installer-${JYTHON_VERSION}.jar -s -t minimum -i mod -i ensurepip -d /usr/local/jython-${JYTHON_VERSION} \
 && rm -f jython-installer-${JYTHON_VERSION}.jar \
 && ln -s /usr/local/jython-${JYTHON_VERSION}/bin/* /usr/local/bin/ 

ADD resources/command.sh /opt/xlr/command.sh
VOLUME /data
VOLUME /root/.gradle
WORKDIR /data

USER root
ENTRYPOINT ["sh","-x","/opt/xlr/command.sh"]