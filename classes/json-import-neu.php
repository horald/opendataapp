<?php
echo "<legend>json-import.</legend>";
$root_path = $_SERVER['DOCUMENT_ROOT'];
echo $root_path."=pfad<br>";
$get_json = file_get_contents($root_path."/daten/import/spielplatz.json");
$json_arr = json_decode($get_json);

//echo "<pre>";
//print_r($json_arr->features[0]);
//echo "</pre>";

foreach($json_arr->features as $obj) {
  echo $obj->attributes->Spielplatzname.",";
  echo $obj->attributes->Stadtbezirk."<br>";
}  

?>