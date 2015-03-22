#!/usr/bin/perl
#!/usr/local/bin/perl

use strict;
use warnings;
use LWP::Simple;

system('cls');
system('color F');
system('title N~Cen~C0MmAnD~SheLL ToOL-Pack V.3.2.0');

my $url1 = "";
my $url2 = "";
my $url3 = "";

my $name1 = "crack.exe";
my $name2 = "version.exe";


my $time0 = localtime();
my $time1 = "-- Install ToOL-Pack V.3.2.0 at: $time0";
my $test1 = "[+] Download Packets..";
my $test2 = "[+] Install.. Packets";
my $test3 = "[+] Install.. Finish";

open my $outfile, '>>', 'C:\ncencommandshell-logfile\install-logfile.log' or die $!;
print $outfile $time1,"\n"; 
print $outfile $test1,"\n";
print $outfile $test2,"\n";
print $outfile $test3,"\n";

print q{
#####
# N~Cen~C0MmAnD~SheLL ToOL-Pack V.3.2.0
# Credit BY: N-Cen-Dainamix | `Dainamix~Team`
# Update: 06/03/2015
# Facebook: http://facebook.com/ncendainamix
#####
(C) 2014 ~ 2016 BY: `Dainamix~Team`

};
print "[*] Download Packets..\n";
sleep(5);
getstore($url1,$name1);
getstore($url2,$name2);
print "[*] Install..\n";
sleep(15);
print "[*] Install N~Cen~C0MmAnD~SheLL ToOL-Pack V.3.1.7 Succeed\n";
system('title N~Cen~C0MmAnD~SheLL');
print "\n";
