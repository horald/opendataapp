<?php
$menu=$_GET[menu];
$idwert=$_GET[idwert];
include("../config.php");
include("buchenfunc.php");
include("bootstrapfunc.php");
include("../sites/views/wp_".$menu."/showtab.inc.php");
bootstraphead();
bootstrapbegin($pararray['headline']);
$buchen = $_GET['buchen'];

if ($buchen==1) {
  if (isset($_REQUEST['submit'])) { 
    echo "<a class='btn btn-primary' href='showtab.php?menu=".$menu."&idwert=".$idwert."'>zur&uumlck</a><br>";
    buchenausfuehren();
  } else {
    echo "<meta http-equiv='refresh' content='0; URL=showtab.php?menu=".$menu."&idwert=".$idwert."'>";  
  }  
} else {
  bucheninput($menu,$idwert);
}
bootstrapend();
?>