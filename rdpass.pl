#!/usr/bin/perl

#####
# RD Password Generator
# Version: 2.9
# Credit by: N-Cen-Dainamix
#(C) 2014 ~ 2016 by: `Dainamix~Team`
#####

# Link download: https://github.com/N-Cen-Dainamix/N-Cen-Dainamix/blob/master/rdpass.pl

####################################################################
# Facebook: http://facebook.com/ncendainamix                       #
# Perl Script RD Password Generator                                #
# for random id and password very good for hostel or cafe internet #
# script free 100% by: N-Cen-Dainamix                              #
####################################################################

###################################################
# How to use                                      #
# 1.download perl and install on your computer    #
# 2.open txt file and copy code and save file .pl #
# 3.douple click run script enjoy!!               #
###################################################

####
# Perl Download for windows
# x86 [32-bit]: http://www.activestate.com/activeperl/downloads/thank-you?dl=http://downloads.activestate.com/ActivePerl/releases/5.22.1.2201/ActivePerl-5.22.1.2201-MSWin32-x86-64int-299574.msi
# x64 [64-bit]: http://www.activestate.com/activeperl/downloads/thank-you?dl=http://downloads.activestate.com/ActivePerl/releases/5.22.1.2201/ActivePerl-5.22.1.2201-MSWin32-x64-299574.msi
####
 


### Start code ###
use strict;
use warnings;
use Term::ANSIColor;
use Win32::Console::ANSI;

&_banner;
&_options;

my($file);
print color 'bold yellow';
print "-- "; print color 'bold white'; print "User enter number"; print color 'bold yellow'; print ": "; print color 'bold green';
chomp(my $tool = <stdin>);
if($tool eq '1'){
&_ab_list;        
}
if($tool eq '2'){
&_ab_1_list;        
}
if($tool eq '3'){
&_num_list;    
}
if($tool eq '4'){
&_a1_list;    
}

sub _ab_list{
print color 'bold white';
print "List random"; print color 'bold yellow'; print ": "; print color 'bold green';    
chomp(my $list = <stdin>);
print color 'bold white';
print "File name"; print color 'bold yellow'; print ": "; print color 'bold green';    
chomp(my $file = <stdin>);
print "\n";
my @r_mon = qw(01 02 03 04 05 06 07 08 09 10 11 12);
my @r_hour = qw(00 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24);
my @r_day = qw(00 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31);
my @r_sec = qw(00 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 );
my($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime(time); $year += 1900; 
open my $make_logo, ">", "$file";
print $make_logo "#####\n";
print $make_logo "# RD Password Generator\n";
print $make_logo "# Version: 2.9\n";
print $make_logo "# Credit by: N-Cen-Dainamix\n";
print $make_logo "#####\n";
print $make_logo "(C) 2016 by: `Dainamix~Team`\n";
print $make_logo "-- Make: [$list/id]\n";
print $make_logo "-- Starting at: [$r_day[$mday]/$r_mon[$mon]/$year $r_hour[$hour]:$r_sec[$min]:$r_sec[$sec]]\n\n";
close($make_logo);
for(my $i=0; $i<$list; $i++){
my($random_id,$random_pass);
my @id = (('a'..'z'));
my @pass = (('a'..'z'));
my $rand = $#id + 1;
my $rand2 = $#pass +1;
for (1..4) {
   $random_id .= $id[int(rand($rand))];
   $random_pass .= $pass[int(rand($rand2))];
}       
print color 'bold white'; print "Random"; print color 'bold yellow'; print ": "; print color 'bold red'; print "["; print color 'bold white'; print "id"; print color 'bold yellow';
print ":"; print color 'bold white'; print "$random_id pass"; print color 'yellow'; print ":"; print color 'bold white'; print "$random_pass"; print color 'bold red'; print "]\n";
open my $make, ">>", "$file";
print $make "id: $random_id\n";
print $make "pass: $random_pass\n";
}
print color 'bold red'; 
print "\n End .. \n";        
}

sub _ab_1_list{
print color 'bold white';
print "List random"; print color 'bold yellow'; print ": "; print color 'bold green';    
chomp(my $list = <stdin>);
print color 'bold white';
print "File name"; print color 'bold yellow'; print ": "; print color 'bold green';    
chomp(my $file = <stdin>);
print "\n";
my @r_mon = qw(01 02 03 04 05 06 07 08 09 10 11 12);
my @r_hour = qw(00 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24);
my @r_day = qw(00 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31);
my @r_sec = qw(00 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 );
my($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime(time); $year += 1900; 
open my $make_logo, ">", "$file";
print $make_logo "#####\n";
print $make_logo "# RD Password Generator\n";
print $make_logo "# Version: 2.9\n";
print $make_logo "# Credit by: N-Cen-Dainamix\n";
print $make_logo "#####\n";
print $make_logo "(C) 2016 by: `Dainamix~Team`\n";
print $make_logo "-- Make: [$list/id]\n";
print $make_logo "-- Starting at: [$r_day[$mday]/$r_mon[$mon]/$year $r_hour[$hour]:$r_sec[$min]:$r_sec[$sec]]\n\n";
close($make_logo);
for(my $i=0; $i<$list; $i++){
my($random_id,$random_pass);
my @id = (('a'..'z'));
my @pass = (('0'..'9'));
my $rand = $#id + 1;
my $rand2 = $#pass +1;
for (1..4) {
   $random_id .= $id[int(rand($rand))];
   $random_pass .= $pass[int(rand($rand2))];
}       
print color 'bold white'; print "Random"; print color 'bold yellow'; print ": "; print color 'bold red'; print "["; print color 'bold white'; print "id"; print color 'bold yellow';
print ":"; print color 'bold white'; print "$random_id pass"; print color 'yellow'; print ":"; print color 'bold white'; print "$random_pass"; print color 'bold red'; print "]\n";
open my $make, ">>", "$file";
print $make "id: $random_id\n";
print $make "pass: $random_pass\n";
}
print color 'bold red'; 
print "\n End .. \n";
  } #end code sub ablist
  
sub _num_list{
print color 'bold white';
print "List random"; print color 'bold yellow'; print ": "; print color 'bold green';    
chomp(my $list = <stdin>);
print color 'bold white';
print "File name"; print color 'bold yellow'; print ": "; print color 'bold green';    
chomp(my $file = <stdin>);
print "\n";
my @r_mon = qw(01 02 03 04 05 06 07 08 09 10 11 12);
my @r_hour = qw(00 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24);
my @r_day = qw(00 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31);
my @r_sec = qw(00 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 );
my($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime(time); $year += 1900; 
open my $make_logo, ">", "$file";
print $make_logo "#####\n";
print $make_logo "# RD Password Generator\n";
print $make_logo "# Version: 2.9\n";
print $make_logo "# Credit by: N-Cen-Dainamix\n";
print $make_logo "#####\n";
print $make_logo "(C) 2016 by: `Dainamix~Team`\n";
print $make_logo "-- Make: [$list/id]\n";
print $make_logo "-- Starting at: [$r_day[$mday]/$r_mon[$mon]/$year $r_hour[$hour]:$r_sec[$min]:$r_sec[$sec]]\n\n";
close($make_logo);
for(my $i=0; $i<$list; $i++){
my($random_id,$random_pass);
my @id = (('0'..'9'));
my @pass = (('0'..'9'));
my $rand = $#id + 1;
my $rand2 = $#pass +1;
for (1..4) {
   $random_id .= $id[int(rand($rand))];
   $random_pass .= $pass[int(rand($rand2))];
}       
print color 'bold white'; print "Random"; print color 'bold yellow'; print ": "; print color 'bold red'; print "["; print color 'bold white'; print "id"; print color 'bold yellow';
print ":"; print color 'bold white'; print "$random_id pass"; print color 'yellow'; print ":"; print color 'bold white'; print "$random_pass"; print color 'bold red'; print "]\n";
open my $make, ">>", "$file";
print $make "id: $random_id\n";
print $make "pass: $random_pass\n";
}
print color 'bold red'; 
print "\n End .. \n";        
}  

sub _a1_list{
print color 'bold white';
print "List random"; print color 'bold yellow'; print ": "; print color 'bold green';    
chomp(my $list = <stdin>);
print color 'bold white';
print "File name"; print color 'bold yellow'; print ": "; print color 'bold green';    
chomp(my $file = <stdin>);
print "\n";
my @r_mon = qw(01 02 03 04 05 06 07 08 09 10 11 12);
my @r_hour = qw(00 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24);
my @r_day = qw(00 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31);
my @r_sec = qw(00 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 );
my($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime(time); $year += 1900; 
open my $make_logo, ">", "$file";
print $make_logo "#####\n";
print $make_logo "# RD Password Generator\n";
print $make_logo "# Version: 2.9\n";
print $make_logo "# Credit by: N-Cen-Dainamix\n";
print $make_logo "#####\n";
print $make_logo "(C) 2014 ~ 2016 by: `Dainamix~Team`\n";
print $make_logo "-- Make: [$list/id]\n";
print $make_logo "-- Starting at: [$r_day[$mday]/$r_mon[$mon]/$year $r_hour[$hour]:$r_sec[$min]:$r_sec[$sec]]\n\n";
close($make_logo);
for(my $i=0; $i<$list; $i++){
my($random_id,$random_pass);
my @id = (('a'..'z'),('0'..'9'));
my @pass = (('a'..'z'),('0'..'9'));
my $rand = $#id + 1;
my $rand2 = $#pass +1;
for (1..4) {
   $random_id .= $id[int(rand($rand))];
   $random_pass .= $pass[int(rand($rand2))];
}       
print color 'bold white'; print "Random"; print color 'bold yellow'; print ": "; print color 'bold red'; print "["; print color 'bold white'; print "id"; print color 'bold yellow';
print ":"; print color 'bold white'; print "$random_id pass"; print color 'yellow'; print ":"; print color 'bold white'; print "$random_pass"; print color 'bold red'; print "]\n";
open my $make, ">>", "$file";
print $make "id: $random_id\n";
print $make "pass: $random_pass\n";
}
print color 'bold red'; 
print "\n End .. \n";        
}

sub _make_logo{
open my $make_logo, ">", "$file";
print $make_logo "#####\n";
print $make_logo "# RD Password Generator\n";
print $make_logo "# Version: 2.9\n";
print $make_logo "# Credit by: N-Cen-Dainamix\n";
print $make_logo "#####";
print $make_logo "(C) 2016 by: `Dainamix~Team`\n\n";
close($make_logo);
}

sub _options{
print color 'bold green'; print "\n---> "; print color 'bold white'; print "List number random RD Password Generator "; print color 'bold green'; print "<---\n\n";    
print color 'bold white'; print "["; print color 'bold magenta'; print "1"; print color 'bold white'; print "] Ramdom id password [id: abcd] [pass: abcd]\n";
print color 'bold white'; print "["; print color 'bold magenta'; print "2"; print color 'bold white'; print "] Ramdom id password [id: abcd] [pass: 1234]\n";
print color 'bold white'; print "["; print color 'bold magenta'; print "3"; print color 'bold white'; print "] Ramdom id password [id: 1234] [pass: 1234]\n";
print color 'bold white'; print "["; print color 'bold magenta'; print "4"; print color 'bold white'; print "] Ramdom id password [ab12] unlimited\n";    
}

sub _banner{
system('cls');
system('title RD Password Generator V.2.9');
print color 'green';
print "#####\n";
print "# "; print color 'bold green'; print "RD Password "; print color 'bold magenta'; print "Generator\n"; print color 'reset'; print color 'green';
print "# "; print color 'bold white'; print "Version"; print color 'bold yellow'; print ": "; print color 'bold red'; print "2.9\n"; print color 'reset'; print color 'green';
print "# "; print color 'bold white'; print "Credit by"; print color 'bold yellow'; print ": "; print color 'bold green'; print "N-Cen-Dainamix\n"; print color 'reset'; print color 'green';
print "#####\n";
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
print "`\n"; print color 'reset';
}
### End code ###
