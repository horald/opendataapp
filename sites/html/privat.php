<?php
include("../../config.php");
include("bootstrapfunc.php");
bootstraphead();
bootstrapbegin("Privat");
$idwert=$_GET['idwert'];
if (isset($idwert)) {
  $query="SELECT * FROM tblmenu_liste WHERE fldparent='".$idwert."' ORDER BY fldSort";
  $result = mysql_query($query) or die(mysql_error()." ".$query);
  echo "<ul>";
  while ($line = mysql_fetch_array($result)) {
  	 echo "<li>".$line['fldMenu']."</li>";
  }	 
  echo "</ul>";
}  
bootstrapend();
?>