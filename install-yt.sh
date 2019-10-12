#!/bin/bash

# -----------------------------------------------------------------------------
# Info:
#  author:    N-Cen-Dainamix
#  file:      youtube-dl.sh
#  created:   13/10/2019
#  version:   1.3.0
# -----------------------------------------------------------------------------
# Requirements:
#  Perl, Python, ffmpeg, youtube-dl
# Description:
#  Youtube Automatic Converter Downloader for Termux
# -----------------------------------------------------------------------------

echo "+++ Updating the Packages +++"
echo "+++ Running Command pkg up +++"
pkg up
echo -e "\\n"
echo "+++ Packages are Updated Successfully +++"
sleep 2;
echo -e "\\n"
echo -e "+++ Install dependency packages +++"
sleep 2;
echo -e "\\n"
echo -e "+++ Install python +++"
echo -e "\\n"
pkg install python -y
sleep 2;
echo -e "\\n"
echo -e "+++ Install Perl +++"
echo -e "\\n"
pkg install perl -y
sleep 2;
echo -e "\\n"
echo -e "+++ Install ffmpeg (For Audio Conversion) +++"
echo -e "\\n"
pkg install ffmpeg -y
sleep 2;
echo -e "\\n"
echo -e "+++ Downloading Youtube-dl +++"
echo -e "+++ Please Wait +++"
curl -s -L https://yt-dl.org/downloads/latest/youtube-dl -o /data/data/com.termux/files/usr/bin/youtube-dl
sleep 2;
echo -e "+++ Youtube-dl Downloaded Successfully +++"
echo -e "\\n"
sleep 2;
echo -e "+++ Set Permission to Execute the Script +++"
chmod a+rx /data/data/com.termux/files/usr/bin/youtube-dl
echo "+++ Permission Granted +++"
sleep 2;
echo -e "\\n"
echo -e "+++ Setup Storage SDcard  +++"
termux-setup-storage
sleep 2;
echo -e "\\n"
echo -e "+++ Setup Directory +++"
sleep 2;
mkdir storage/dcim/DM-Termux
echo -e "\\n"
echo -e "+++ Setup Startup +++"
sleep 2;
cd storage/dcim/DM-Termux
curl -s -L https://raw.githubusercontent.com/N-Cen-Dainamix/N-Cen-Dainamix/master/st-startup.pl
perl ./st-startup.pl
echo -e "\\n"
echo "+++ Installation completed successfully +++"
echo "+++ Reboot Termux +++";
