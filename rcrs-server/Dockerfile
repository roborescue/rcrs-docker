from gradle:jdk17-alpine
RUN git clone https://github.com/roborescue/rcrs-server/ /rcrs-server/
WORKDIR /rcrs-server/
COPY ./docker-run.sh /
RUN gradle completeBuild
CMD ["bash","docker-run.sh"]