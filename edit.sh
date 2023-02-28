# command for adding text overlay to video 
# first install ffmpeg package via their website ....
ffmpeg -i input_video.mp4 -vf "drawtext=fontfile=/path/to/font.ttf:text='HI INTERACTLY.VIDEO TEAM':fontcolor=White:fontsize=35:box=1:boxcolor=Maroon:bordercolor=Aquamarine:boxborderw=30:x=(w-text_w)/2:y=(h-text_h)/2" -codec:a copy interactive2.mp4

# command for logo .png file in the middle of the video ..

ffmpeg -y -i interactive2.mp4 -i play.png \                          
-filter_complex "overlay=x=main_w-overlay_w-(main_w*0.001):y=main_h-overlay_h-(main_h*0.001)" \
OUT_BOTTOM_RIGHT.mp4