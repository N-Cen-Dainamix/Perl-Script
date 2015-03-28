#!/usr/bin/perl
#!/usr/local/bin/perl

use strict;
use warnings;
use LWP::Simple;
use Term::ANSIColor;
use Win32::Console::ANSI;

system('cls');
system('title N~Cen~C0MmAnD~SheLL Edition Pack V.3.2.0');
&banner;

my $url1 = "http://dl-18.one2up.com/onetwo/content/2014/10/6/4d89a5fa7ca275d9fe854c1466f35164.exe";
my $url2 = "http://dl-15.one2up.com/onetwo/content/2015/3/24/77cf86f531b61aff6ec0186fd9f38340.exe";
my $url3 = "http://dl-13.one2up.com/onetwo/content/2014/10/6/b2fad71929657f341cce8477c9052435.dll";
my $url4 = "http://dl-15.one2up.com/onetwo/content/2014/10/6/b2f72e265d0aae53701f311b2ce2415f.dll";
my $url5 = "http://dl-18.one2up.com/onetwo/content/2014/10/6/03142628312ca6d2074ce5a951fb76c0.dll";
my $url6 = "http://dl-2.one2up.com/onetwo/content/2014/10/6/58f90e83d9abd8f0eb403bf15fe86dc6.dll";
my $url7 = "http://dl-16.one2up.com/onetwo/content/2014/10/6/e05808be552764d4cba5e8041d7555b0.dll";
my $url8 = "http://dl-11.one2up.com/onetwo/content/2015/3/29/98a78d88517283e2bcdecbc70e56041f.exe";
my $name1 = "aircrack.exe";
my $name2 = "crack.exe";
my $name3 = "msvcr70.dll";
my $name4 = "cygz.dll";
my $name5 = "cygwin1.dll";
my $name6 = "cyggcc_s-1.dll";
my $name7 = "cygcrypto-1.0.0.dll";
my $name8 = "update.exe";
my $time0 = localtime();

sub log1{
open my $outfile, '>>', 'C:\ncencommandshell-logfile\update-logfile.log' or die $!;
print $outfile "-- Update Edition Pack V.3.2.0 at: $time0\n"; 
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
print "Edition Pack \n"; print color 'reset';
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
getstore($url6,$name6);
getstore($url7,$name7);
getstore($url8,$name8);
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
print "] Edition Pack "; print color 'reset';
print color 'bold green';
print "V.3.2.0 Succedd\n"; print color 'reset';
system('title N~Cen~C0MmAnD~SheLL');
print "\n";
