FROM openjdk:11

RUN apt-get update
RUN apt-get install -y ant

WORKDIR /app
COPY . /app
RUN ant main

ENTRYPOINT ["bash"]