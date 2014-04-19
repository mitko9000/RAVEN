#!/bin/sh
sudo mkdir /tmp/stream/
sudo chmod a+rw /tmp/stream
LD_LIBRARY_PATH=/opt/mjpg-streamer/ /opt/mjpg-streamer/mjpg_streamer -i "input_file.so -f /tmp/stream -n pic.jpg" -o "output_http.so -p 9000 -w /opt/mjpg-streamer/www" &
raspistill -w 640 -h 480 -q 5 -o /tmp/stream/pic.jpg -tl 100 -vf -hf -t 9999999 -th 0:0:0 -n &