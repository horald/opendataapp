<?php
include("config.php");
	   echo "dbhost:".$dbhost."<br>";
      $lines = file('install.sql');
      $newquery="";
      foreach ($lines as $line_num => $query) {
         if (trim($query)=="" || substr($query,0,2)=="--" || substr($query,0,2)=="/*") {
         } else {
           $newquery=$newquery.$query;
           //echo $query."<br>";
           if (substr(trim($query),-1)==";") {
             echo "query:".$newquery."<br>";
             $result = @mysql_query($newquery) or die(mysql_error());
             $newquery=""; 
           } 
         }
      }
      echo "Database successful created.<br>";
?>