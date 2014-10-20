<?php
$menu=$_GET[menu];
$idwert=$_GET[idwert];
include("../config.php");
include("dbtools.php");
include("distinctfunc.php");
include("bootstrapfunc.php");
include("../sites/views/wp_".$menu."/showtab.inc.php");
bootstraphead();
bootstrapbegin($pararray['headline']);
$distinct = $_GET['distinct'];
if ($distinct==1) {
  if (isset($_REQUEST['submit'])) { 
    echo "<a class='btn btn-primary' href='showtab.php?menu=".$menu."&idwert=".$idwert."'>zur&uumlck</a><br><br>";
    $table=$pararray['dbtable'];
    $feld=$_POST['feld'];
    distinctausfuehren($table,$feld,$gdbtyp);
  } else {
    echo "<meta http-equiv='refresh' content='0; URL=showtab.php?menu=".$menu."&idwert=".$idwert."'>";  
  }  
} else {
  distinctauswahl($menu,$idwert);
}  

bootstrapend();

?>