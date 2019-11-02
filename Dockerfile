FROM python:latest
RUN  mkdir /vids
WORKDIR   /vids
COPY   .  .
RUN  pip3 install -r requirements.txt
CMD   ["python3","camera.py"]