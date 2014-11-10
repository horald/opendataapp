<?php
include("../config.php");
echo "<legend>json-import.</legend>";
$root_path = $_SERVER['DOCUMENT_ROOT'];
echo $root_path."=pfad<br>";
$get_json = file_get_contents($root_path."/daten/import/spielplatz.json");
$json_arr = json_decode($get_json);

$qrydel="DELETE FROM tblmarkers WHERE fldtype='spielplatzimport'";
$resdel = mysql_query($qrydel) or die(mysql_error());


foreach($json_arr->features as $obj) {
  $fldname=$obj->attributes->Spielplatzname;
  $fldstadtbezirk=$obj->attributes->Stadtbezirk;
  $fldstadtteil=$obj->attributes->Stadtteil;
  $fldspielplatzpaten=$obj->attributes->Spielplatzpaten;
  //$fldxkoor=$obj->attributes->geometry->x;
  $fldykoor=$obj->geometry->x;
  $fldxkoor=$obj->geometry->y;
  echo $fldname.",";
  echo $fldxkoor.",";
  echo $fldstadtbezirk."<br>";
  $query="INSERT INTO tblmarkers (fldname,fldstadtbezirk,fldstadtteil,fldspielplatzpaten,fldxkoor,fldykoor,fldtype) VALUES ('".$fldname."','".$fldstadtbezirk."','".$fldstadtteil."','".$fldspielplatzpaten."',".$fldxkoor.",".$fldykoor.",'spielplatzimport')";
  $result = mysql_query($query) or die(mysql_error());
}  
?>