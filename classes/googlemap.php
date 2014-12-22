<?php
session_start();
$menu=$_GET[menu];
include("../config.php");
include("dbtools.php");
include("bootstrapfunc.php");
include("../sites/views/wp_".$menu."/showtab.inc.php");

echo "googlemap";
?>
