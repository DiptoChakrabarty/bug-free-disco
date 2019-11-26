import subprocess as sp 
n=input("Give name of Container")
sp.getoutput("sudo docker run -it -e DISPLAY=$DISPLAY  --device=/dev/video0:/dev/video0 -v /tmp/.X11-unix:/tmp/.X11-unix:ro --name  {}  capture".format(n))