#!/usr/bin/perl

#####
# BlackBox OpenPort
# Version: 1.0 [no ++]
# Credit by: N-Cen-Dainamix
# Facebook: http://facebook.com/ncendainamix
#####
#(C) 2014 ~ 2016 by: `Dainamix~Team`

use strict;
use Socket;
use Term::ANSIColor;
use IO::Socket::INET;
use Win32::Console::ANSI;

&_banner;

my($s_port,$e_port,$socket,$port);
print color 'bold white';
print "Start port"; print color 'bold yellow';
print ": "; print color 'bold magenta';
chop($s_port = <stdin>);
print color 'bold white';
print "End port"; print color 'bold yellow';
print ": "; print color 'bold magenta';
chop($e_port = <stdin>);
print "\n"; print color 'reset';
while(1){
for($port=$s_port; $port<$e_port; $port++){
$socket = new IO::Socket::INET(
LocalHost => '127.0.0.1',
LocalPort => "$port",
Proto => 'tcp',
Listen => 5,
Reuse => 1 ) or die "ERROR in Socket Creation : $!\n";
$socket->listen();  
print "\r port: $port online";
}
  }
sub _banner{
print color 'bold red';
print "\nBlackBox "; print color 'bold magenta';
print "OpenPort\n"; print color 'bold white';
print "Version"; print color 'bold yellow';
print ": "; print color 'bold magenta';
print "1.0\n"; print color 'bold white';
print "Credit BY"; print color 'bold yellow'; print ": ";
print color 'bold green'; print "N-Cen-Dainamix\n\n";
}
