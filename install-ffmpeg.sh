#!/bin/bash
sudo -u sagemaker-user -i <<'EOF'
cd /usr/local/bin
sudo mkdir ffmpeg && cd ffmpeg
# check https://johnvansickle.com/ffmpeg/ for latest build
sudo wget https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-i686-static.tar.xz --no-check-certificate
sudo tar -xf ffmpeg-release-i686-static.tar.xz
# Verify the lastest version is ffmpeg-7.0 otherwise update the following commands
sudo ln -s /usr/local/bin/ffmpeg/ffmpeg-7.0-i686-static/ffmpeg /usr/bin/ffmpeg
sudo ln -s /usr/local/bin/ffmpeg/ffmpeg-7.0-i686-static/ffprobe /usr/bin/ffprobe