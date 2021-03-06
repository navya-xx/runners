#!/bin/bash

fit_path="/home/navya/workspace/runners/ACTIVITY/";

cd $fit_path;

for file in *.FIT;
	do
		file_name=$(basename "$file");
		file_name=${file_name%.*};
		gpsbabel -i garmin_fit -f $file -o gpx -F ../GPX/$file_name.gpx;
		touch gps_tracks.list;
		printf "%s\n",$file_name.gpx >> gps_tracks.list
done
