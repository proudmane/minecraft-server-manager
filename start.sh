#!/bin/bash
cd ~/minecraft
tmux new-session -d -s "minecraft_server"
tmux send -t minecraft_server.0 "java -Xmx4096M -Xms4096M -jar ./server.jar nogui" ENTER
