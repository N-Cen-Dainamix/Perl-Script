#!/usr/bin/perl

use Socket;

if ($#ARGV != 0) {
print q{
#####
# Reverse IP LoOKuP
#####
};
print "Usage: reverse.pl [Website]\n";        
exit(1);
}

$target = $ARGV[0];
$hostname1 = $target;
$ip1 = gethostbyname($hostname1) || die "[-] Error:($target) $!\n";
$hostip1 = inet_ntoa($ip1) || die "[-] Error:($target) $!\n\n";

print "[*] Reverse LoOKuP=>($target:$hostip1)\n";
