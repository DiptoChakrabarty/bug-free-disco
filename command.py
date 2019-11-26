import subprocess as sp 
n=input("Give name of Container : ")
sp.getoutput("xhost +")
sp.getoutput("docker run -it    -e QT_X11_NO_MITSHM=1 -e QT_GRAPHICSSYSTEM=native  -e DISPLAY=$DISPLAY  --device=/dev/video0:/dev/video0 -v /tmp/.X11-unix:/tmp/.X11-unix:ro --name  {}  cam:v5".format(n))