!#/bin/bash
xhost +
sudo docker run -it    -e QT_X11_NO_MITSHM=1 -e QT_GRAPHICSSYSTEM=native  -e DISPLAY=$DISPLAY  --device=/dev/video0:/dev/video0 -v /tmp/.X11-unix:/tmp/.X11-unix:ro --name  goat  cam:v5