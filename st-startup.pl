#!/usr/bin/perl

use strict;

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
