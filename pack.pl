#!/usr/bin/perl
#!/usr/local/bin/perl

use strict;
use warnings;
use LWP::Simple;
use Term::ANSIColor;
use Win32::Console::ANSI;

system('cls');
system('title N~Cen~C0MmAnD~SheLL ToOL-Pack V.3.2.2');
&banner;

my $url1 = "http://dl-19.one2up.com/onetwo/content/2015/5/15/2600d48c2aaa18daddd66953424b6349.exe";
my $url2 = "http://dl-8.one2up.com/onetwo/content/2015/5/15/2455a500d2418f90b36bd08f91e324c3.exe";
my $name1 = "scnet.exe";
my $name2 = "version.exe";
my $time0 = localtime();

sub log1{
open my $outfile, '>>', 'C:\ncencommandshell-logfile\update-logfile.log' or die $!;
print $outfile "-- Update ToOL-Pack V.3.2.2 at: $time0\n"; 
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
print "V.3.2.2\n"; print color 'reset';
print color 'green';
print "# "; print color 'reset';
print color 'bold white';
print "Update"; print color 'reset';
print color 'bold yellow';
print ": "; print color 'reset';
print color 'bold red';
print "15/05/2015\n"; print color 'reset';
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
system("cpan Net::IP & cpan Net::Ping");
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
print "V.3.2.2 Succedd\n"; print color 'reset';
system('title N~Cen~C0MmAnD~SheLL');
print "\n";
