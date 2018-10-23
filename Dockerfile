FROM java:8
COPY src /home/user1/abhelloworld/src
WORKDIR /home/user1/abhelloworld
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java
ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]
