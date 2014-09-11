<?php
header("content-type: text/html; charset=utf-8");

function distinctauswahl($menu,$idwert) {
  echo "<form class='form-horizontal' method='post' action='distinct.php?menu=".$menu."&idwert=".$idwert."&distinct=1'>";
  echo "<fieldset>";
  echo "<div class='control-group'>";
  
  echo "<div>";
  echo "Jahr: ";
  echo "<input type='Text' name='feld' value='fldstadtbezirk'/>";
  echo "</div>";

  echo "  <div class='form-actions'>";
  echo "     <button type='submit' name='submit' class='btn btn-primary'>OK</button>";
  echo "     <button class='btn'>Abbruch</button>";
  echo "  </div>";
  echo "</div>";
  echo "</fieldset>";
  echo "</form>";
}

function distinctausfuehren($table,$feld,$gdbtyp) {
  $qrydis = "SELECT DISTINCT ".$feld." FROM tblschulen";
  //echo $qrydis."<br>";
//  $resdis = mysql_query($qrydis) or die(mysql_error());
//  while ($lindis = mysql_fetch_array($resdis)) { 
  $resdis = db_query($qrydis,"",$gdbtyp);
  while ($lindis = db_fetch($resdis,$gdbtyp)) { 
    $qryins="INSERT INTO ".$table." (fldbez) VALUES ('".$lindis[$feld]."')";
    echo "<div class='alert alert-info'>";
    echo $qryins;
    echo "</div>";
//    $resins = mysql_query($qryins) or die(mysql_error());
    $resins = db_query($qryins,"",$gdbtyp);
  }  
}

?>