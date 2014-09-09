<?php
$menu=$_GET[menu];
$idwert=$_GET[idwert];
include("../config.php");
include("pruefvorratfunc.php");
include("bootstrapfunc.php");
include("../sites/views/wp_".$menu."/showtab.inc.php");
bootstraphead($pfad);
bootstrapbegin($pararray['headline']);

echo "<a class='btn btn-primary' href='showtab.php?menu=".$menu."&idwert=".$idwert."'>zur&uumlck</a><br><br>";pruefvorrat($pararray);

bootstrapend();
?>