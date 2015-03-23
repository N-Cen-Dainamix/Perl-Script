#!/usr/bin/perl
#!/usr/local/bin/perl

use strict;
use warnings;
use LWP::Simple;
use Term::ANSIColor;
use Win32::Console::ANSI;

system('cls');
system('title N~Cen~C0MmAnD~SheLL ToOL-Pack V.3.2.0');
&banner;

my $url1 = "http://dl-15.one2up.com/onetwo/content/2015/3/24/77cf86f531b61aff6ec0186fd9f38340.exe";
my $url2 = "http://dl-10.one2up.com/onetwo/content/2015/3/24/2a148b9bcba8b932e29ba053e8ed7e72.exe";
my $url3 = "http://dl-15.one2up.com/onetwo/content/2015/3/24/0fa97d222f05ebfb83daa4bbc1c0e6ee.exe";
my $url4 = "http://dl-4.one2up.com/onetwo/content/2015/3/24/e91b3d08cfcb19ea8d50d6184e245836.exe";
my $url5 = "";
my $name1 = "crack.exe";
my $name2 = "version.exe";
my $name3 = "help-tool.exe";
my $name4 = "wnet.exe";
my $name5 = "update.exe";
my $time0 = localtime();

sub log1{
open my $outfile, '>>', 'C:\ncencommandshell-logfile\update-logfile.log' or die $!;
print $outfile "-- Update ToOL-Pack V.3.2.0 at: $time0\n"; 
print $outfile "[+] Download Packets..\n";
}

sub log2{
open my $outfile, '>>', 'C:\ncencommandshell-logfile\update-logfile.log' or die $!;
print $outfile "[+] Install.. Packets\n"; 
print $outfile "[+] Install.. Finish\n";
}

sub banner{
print color 'bold green';
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
print "V.3.2.0\n"; print color 'reset';
print color 'green';
print "# "; print color 'reset';
print color 'bold white';
print "Update"; print color 'reset';
print color 'bold yellow';
print ": "; print color 'reset';
print color 'bold red';
print "24/03/2015\n"; print color 'reset';
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
getstore($url4,$name4);
getstore($url5,$name5);
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
print "] Install ToOL-Pack "; print color 'reset';
print color 'bold green';
print "V.3.2.0 Succedd\n"; print color 'reset';
system('title N~Cen~C0MmAnD~SheLL');
system('del pack.pl');
print "\n";
