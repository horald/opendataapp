<?php
$menu=$_GET[menu];
$idwert=$_GET[idwert];
//echo $menu."=menu<br>";
include("../config.php");
include("dbtools.php");
include("showdatafunc.php");
include("../classes/bootstrapfunc.php");
include("../sites/views/wp_".$menu."/showtab.inc.php");
bootstraphead();
bootstrapbegin($pararray['headline']);
myshowdata($pararray,$listarray,$idwert,$gdbtyp);
bootstrapend();
?>