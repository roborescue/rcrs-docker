from gradle:jdk17-alpine


RUN git clone https://github.com/roborescue/adf-sample-agent-java /agent/
copy ./docker-run.sh /
WORKDIR /agent/

RUN gradle build

CMD ["bash","/docker-run.sh"]