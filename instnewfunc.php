<?php
include("config.php");

function abfrageupdate() {
  echo "<form class='form-horizontal' method='post' action='instnew.php?instnew=1'>";
  echo "ACHTUNG! Datensicherung anlegen! Die Datenbank wird jetzt aktualisiert.<br>";
  echo "Einige Tabellen werden neu erzeugt.<br>";
  echo "Installation jetzt durchf&uumlhren?";
  echo "  <div class='form-actions'>";
  echo "     <button type='submit' name='submit' class='btn btn-primary'>OK</button>";
  echo "     <button class='btn'>Abbruch</button>";
  echo "  </div>";
  echo "</form>";
}

function updateabbruch() {
include("config.php");
      $dbFile="instnew.sql";
      if ( @ unlink ( $dbFile ) ) {
        echo 'Die Datei ' . $dbFile . ' wurde gel&oumlscht!<br>';
      } else {
        echo "<div class='alert alert-warning'>";
        echo 'Konnte die Datei ' . $dbFile . ' nicht l&oumlschen! Bitte h&aumlndisch l&oumlschen!<br>';
        echo "</div>";
      }      
      
      echo "<a class='btn btn-primary' href='index.php'>Fertig</a>";
}	

function updateausfuehren() {
include("config.php");
      $dbFile="instnew.sql";
//echo $dbFile."updatewp<br>";
      $lines = file($dbFile);
      $newquery="";
      foreach ($lines as $line_num => $query) {
         if (trim($query)=="" || substr($query,0,2)=="--" || substr($query,0,2)=="/*") {
         } else {
           $newquery=$newquery.$query;
           //echo $query."<br>";
           if (substr(trim($query),-1)==";") {
             //echo "query:".$newquery."<br>";
             $result = @mysql_query($newquery) or die(mysql_error());
             $newquery=""; 
           } 
           //$result = @mysql_query($query) or die(mysql_error());
         }
      }
      echo "Database successful updated.<br>";
      
      if ( @ unlink ( $dbFile ) ) {
        echo 'Die Datei ' . $dbFile . ' wurde gel&oumlscht!<br>';
      } else {
        echo 'Konnte die Datei ' . $dbFile . ' nicht l&oumlschen! Bitte h&aumlndisch l&oumlschen!<br>';
      }      
      
      echo "<a href='index.php'>Fertig</a>";
}

?>