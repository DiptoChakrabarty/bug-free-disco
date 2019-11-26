FROM cam:v3
WORKDIR   /vids
COPY   .  .
VOLUME  /tmp/.X11-unix:/tmp/.X11-unix  \
        - /dev/video0:/dev/video0 \
        - /dev/video1:/dev/video1      
RUN  export DISPLAY=:0  && dbus-uuidgen > /etc/machine-id && apt-get install vim -y
CMD   ["python3","camera.py"] 
