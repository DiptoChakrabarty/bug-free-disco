FROM ubuntu
RUN  mkdir /vids
WORKDIR   /vids
COPY   .  .
RUN  apt-get update -y && apt-get upgrade -y && apt-get install python3-pip -y
RUN  pip3 install -r requirements.txt
CMD   ["python3","camera.py"]