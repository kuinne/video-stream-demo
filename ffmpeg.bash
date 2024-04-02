ffmpeg -re -i ./data/911Mothers_2010W-480p.mp4 -vcodec libx264 -acodec aac -f flv rtmp://localhost:1935/live/STREAM_NAME

ffmpeg -i ./data/911Mothers_2010W-480p.mp4 -vcodec libx265 ./data/911Mothers_2010W-480p_h265.mp4

ffmpeg -re -i ./data/911Mothers_2010W-480p_h265.mp4 -vcodec libx264 -acodec aac -f flv rtmp://localhost:1935/live/STREAM_NAME

ffmpeg -re -i ./data/911Mothers_2010W-480p.mp4 -c:a copy -c:v libx265 -f flv rtmp://localhost:1935/live/STREAM_NAME

