from python:alpine


RUN git clone https://github.com/roborescue/rcrs-sample-agent-python /agent/
copy ./docker-run.sh /
WORKDIR /agent/

CMD ["bash","/docker-run.sh"]