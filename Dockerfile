FROM openjdk:11

RUN apt-get update
RUN apt-get install -y ant

WORKDIR /app
COPY ./app /app
RUN ant main

ENTRYPOINT ["bash"]