<?php
$menu=$_GET[menu];
$idwert=$_GET[idwert];
include("../config.php");
include("dbtools.php");
include("helpfunc.php");
include("bootstrapfunc.php");
include("../sites/views/wp_".$menu."/showtab.inc.php");
bootstraphead();
bootstrapbegin($pararray['headline']);

hilfefunc($menu,$idwert,$gdbtyp);

bootstrapend();
?>