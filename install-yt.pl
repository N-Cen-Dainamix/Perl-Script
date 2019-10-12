#!/usr/bin/perl

# -----------------------------------------------------------------------------
# Info:
#  author:    N-Cen-Dainamix
#  file:      yt-install.pl
#  created:   13/10/2019
#  version:   1.3.0
# -----------------------------------------------------------------------------
# Requirements:
#  Perl, Python, ffmpeg, cURL, youtube-dl
# Description:
#  Youtube Automatic Converter Downloader for Termux
# -----------------------------------------------------------------------------

use strict;

&_banner;

print "-- Updateing the Packages --\n";
sleep 2;
system("pkg up");
print "-- Packages are Updated Successfully --\n"
sleep 2;
print "-- install Python --\n";
sleep 2;
system("pkg install python -y");
print "-- install ffmpeg (For Audio Conversion\n";
sleep 2;
system("pkg install ffmpeg -y");
print "-- install Youtube-dl --\n";
sleep 2;
system("curl -s -L https://yt-dl.org/downloads/latest/youtube-dl -o /data/data/com.termux/files/usr/bin/youtube-dl");
print "-- Youtube-dl Downloaded Successfully --\n";
sleep 2;
print "-- Set Permission to Execute the Script --"
sleep 2;
system("chmod a+rx /data/data/com.termux/files/usr/bin/youtube-dl");
print "-- Setup Storage SDcard -- \n";
sleep 2;
system("termux-setup-storage");
print "-- Setup Directory --\n";
sleep 2;
system("mkdir storage/dcim/DM-Termux");
print "-- Setup Startup --\n";
sleep 2;
&_setup;
print "-- Installation completed successfully --\n"
print "-- Reboot Termux --\n";

sub _setup{
my $file = "../usr/etc/bash.bashrc";
open my $outfile, ">", $file;
print $outfile q{command_not_found_handle() {
/data/data/com.termux/files/usr/libxec/termux/command-not-found "$1"
}
PS1='\$ '
cd storage/dcim/DM-Termux
clear
perl ./yt-downloader.pl
};
close($outfile);
}

sub _banner{
print q{###############################################################################
#                   __     __         _         _                             #
#                   \ \   / /        | |       | |                            #
#                    \ \_/ /__  _   _| |_ _   _| |__   ___                    #
#                     \   / _ \| | | | __| | | | '_ \ / _ \                   #
#                      | | (_) | |_| | |_| |_| | |_) |  __/                   #
#                      |_|\___/ \__,_|\__|\__,_|_.__/ \___|                   #
#                   Youtube Automatic Converter Downloader                    #
#                 Versions: 1.3.0 [Termux]  Update: 13/10/2019                #
#                  Credit by: N-Cen-Dainamix  Dainamix-Team                   #
#                 Contact: http://facebook.com/ncendainamix                   #
###############################################################################
};
}
