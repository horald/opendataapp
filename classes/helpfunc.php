<?php
header("content-type: text/html; charset=utf-8");

function hilfefunc($menu,$idwert,$gdbtyp) {
  include("../config.php");
  $pfad = "../sites/views/wp_".$menu."/";
  echo "<a class='btn btn-primary' href='showtab.php?menu=".$menu."&idwert=".$idwert."'>zur&uumlck</a><br> ";
  $datei="help.".$langshort.".html";
  //echo $datei."<br>";
  if ( file_exists ( $pfad.$datei ) ) {
    $lines = file($pfad.$datei);
    foreach ($lines as $line_num => $helpline) {
      echo $helpline;
    }
  } else {
    $query="SELECT * FROM tbltranslate WHERE fldname='NOHELP' and fldlang='".$langshort."'";
    //echo $query."<br>";
//    $result = mysql_query($query) or die(mysql_error());
    $result = db_query($query,"",$gdbtyp);
//    if ($line = mysql_fetch_array($result)) {
    if ($line = db_fetch($result,$gdbtyp)) {
      $hilfe=$line['fldbez'];
    } else {
      $hilfe="Keine Hilfe vorhanden";
    }
    echo "<br>";
    echo "<div class='alert alert-info'>";
    echo $hilfe.".";
    echo "</div>";
  }  
}
?>