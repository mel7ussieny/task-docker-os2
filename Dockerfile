FROM ubuntu

WORKDIR /app

# COPY task.java /app/task.java if 3 not found
COPY task.java .

RUN apt-get update
RUN apt-get install -y default-jdk

RUN javac task.java

CMD ["java" ,"task"]