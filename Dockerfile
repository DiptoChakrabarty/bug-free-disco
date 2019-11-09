FROM cam:v1
COPY  /tmp/.X11-unix   /tmp/.X11-unix
RUN  export DISPLAY= :0  && dbus-uuidgen > /etc/machine-id
RUN  mkdir /vids
WORKDIR   /vids
COPY   .  .
CMD   ["python3","camera.py"] 
