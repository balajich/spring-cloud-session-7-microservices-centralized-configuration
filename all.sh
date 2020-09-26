#!/usr/bin/env bash
echo "stopping all the  services"
sh stop.sh
echo "build"
sh build.sh
echo "staring  services"
sh start.sh