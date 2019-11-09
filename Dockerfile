FROM continuumio/anaconda
RUN  mkdir /vids
WORKDIR   /vids
COPY   .  .
RUN  conda install --file requirements.txt
CMD   ["python3","camera.py"]