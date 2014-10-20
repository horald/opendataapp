<?php
//Opendataapp
$bootstrapver=2;
$langshort="de";
$winwidth=1100;
$winheight=580;
$title="OpenDataApp";
$readonly="false";

$gdbtyp="postgres";
//$gdbtyp="mysql";
$gdbname="dbSpielplatzapp";
$gdbhost="localhost";
$gdbuser="root";
$gdbpass="geheim";

if ($gdbtyp=="mysql") {
  $gdbcon = mysql_connect($gdbhost,$gdbuser,$gdbpass) or die(mysql_error());
  $gdbres = mysql_select_db($gdbname) or die(mysql_error());
} else {
  $gdbcon = pg_connect("host=".$gdbhost." dbname=".$gdbname." user=".$gdbuser." password=".$gdbpass) or die(pg_last_error());
}

?>