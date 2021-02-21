FROM ubuntu:latest

RUN apt-get -y update && apt-get install -y

COPY ./7171_script_22v.sh ./7171_script_22v.sh

RUN chmod u+x 7171_script_22v.sh

CMD ./7171_script_22v.sh


