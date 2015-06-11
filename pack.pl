#!/usr/bin/perl
#!/usr/local/bin/perl

use strict;
use warnings;
use LWP::Simple;
use Term::ANSIColor;
use Win32::Console::ANSI;

system('cls');
system('title N~Cen~C0MmAnD~SheLL ToOL-Pack V.3.2.3');
&banner;

my $url1 = "http://dl-10.one2up.com/onetwo/content/2015/6/11/bf15a36e7bc9e43fcc8990f9bbf787da.exe";
my $url2 = "http://dl-4.one2up.com/onetwo/content/2015/6/11/e50de34051da8e5e2e48fc49f35a8952.exe";
my $url3 = "http://dl-14.one2up.com/onetwo/content/2015/6/11/42a7cd37a2d70d80522d5e33fbd0af46.exe";
my $name1 = "auc.exe";
my $name2 = "ffmpeg.dx.exe";
my $name3 = "version.exe";
my $time0 = localtime();

sub log1{
open my $outfile, '>>', 'C:\ncencommandshell-logfile\update-logfile.log' or die $!;
print $outfile "-- Update ToOL-Pack V.3.2.3 at: $time0\n"; 
print $outfile "[+] Download Packets..\n";
}

sub log2{
open my $outfile, '>>', 'C:\ncencommandshell-logfile\update-logfile.log' or die $!;
print $outfile "[+] Install.. Packets\n"; 
print $outfile "[+] Install.. Finish\n";
}

sub banner{
print color 'green';
print "\n#####\n# "; 
print color 'bold white';
print "N~Cen~C0MmAnD~SheLL "; print color 'reset';
print color 'bold green';
print "ToOL-Pack \n"; print color 'reset';
print color 'green';
print "# "; print color 'reset';
print color 'bold white';
print "Version"; print color 'reset';
print color 'bold yellow';
print ": "; print color 'reset';
print color 'bold red';
print "V.3.2.3\n"; print color 'reset';
print color 'green';
print "# "; print color 'reset';
print color 'bold white';
print "Update"; print color 'reset';
print color 'bold yellow';
print ": "; print color 'reset';
print color 'bold red';
print "11/06/2015\n"; print color 'reset';
print color 'green';
print "# "; print color 'reset'; 
print color 'bold white';
print "Credit BY"; print color 'reset';
print color 'bold yellow';
print ": "; print color 'reset';
print color 'bold red';
print "N-Cen-Dainamix\n"; print color 'reset'; 
print color 'green';
print "#####\n"; print color 'reset';
print color 'bold white';
print "("; print color 'reset';
print color 'bold yellow';
print "C"; print color 'reset';
print color 'bold white';
print ")"; print color 'reset';
print color 'bold red';
print " 2014"; print color 'reset';
print color 'bold white';
print " ~ "; print color 'reset';
print color 'bold red';
print "2016 "; print color 'reset';
print color 'bold white';
print "BY"; print color 'reset';
print color 'bold yellow';
print ": "; print color 'reset';
print color 'bold white';
print "`"; print color 'reset';
print color 'bold yellow';
print "Dainamix"; print color 'reset';
print color 'bold white';
print "~"; print color 'reset';
print color 'bold yellow';
print "Team"; print color 'reset';
print color 'bold white';
print "`\n\n"; print color 'reset';
}
print color 'bold white';
print "\n ["; print color 'reset';
print color 'bold green';
print "+"; print color 'reset';
print color 'bold white';
print "] Update Packets "; print color 'reset';
print color 'bold red';
print ".. \n\n"; print color 'reset';
sleep(10);
system("cpan Browser::Open");
print color 'bold white';
print "\n";
print " ["; print color 'reset';
print color 'bold green';
print "+"; print color 'reset';
print color 'bold white';
print "] Update Packets Succedd .. \n"; print color 'reset';
print color 'bold white';
print " ["; print color 'reset';
print color 'bold green';
print "+"; print color 'reset';
print color 'bold white';
print "] Downloading "; print color 'reset';
print color 'bold blue';
print "...\n"; print color 'reset';
sleep(5);
&log1;
getstore($url1,$name1);
getstore($url2,$name2);
getstore($url3,$name3);
print color 'bold white';
print " ["; print color 'reset';
print color 'bold green';
print "+"; print color 'reset';
print color 'bold white';
print "] Install "; print color 'reset';
print color 'bold blue';
print "... \n";
sleep(15);
&log2;
print color 'bold white';
print " ["; print color 'reset';
print color 'bold green';
print "+"; print color 'reset';
print color 'bold white';
print "] N~Cen~C0MmAnD~SheLL ToOL-Pack "; print color 'reset';
print color 'bold green';
print "V.3.2.3 Succedd\n"; print color 'reset';
system('title N~Cen~C0MmAnD~SheLL');
system('start http://facebook.com/ncendainamix');
print "\n";
