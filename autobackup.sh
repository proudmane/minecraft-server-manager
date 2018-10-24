#!/bin/bash
tmux send -t minecraft_server.0 'say Server will automatically reboot and backup in ten minutes. Please get to a safe place and disconnect.' ENTER
sleep 9m
tmux send -t minecraft_server.0 'say Server is going down in one minute. Please disconnect now.' ENTER
sleep 1m
./stop.sh
sleep 10
./backup.sh minecraft
sleep 10
./start.sh
