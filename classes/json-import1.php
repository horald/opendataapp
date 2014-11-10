<?php
echo "json-import<br>";
$string = file_get_contents("/var/www/html/daten/import/spielplatz.json");
//$string = file_get_contents("http://geoportal1.stadt-koeln.de/ArcGIS/rest/services/Spielangebote/MapServer/0/query?text=&geometry=&geometryType=esriGeometryPoint&inSR=&spatialRel=esriSpatialRelIntersects&relationParam=&objectIds=&where=objectid%20is%20not%20null&time=&returnCountOnly=false&returnIdsOnly=false&returnGeometry=true&maxAllowableOffset=&outSR=4326&outFields=*&f=json");
$json_arr=json_decode($string,true);

//echo "<pre>";
//print_r($json_arr);
//echo "</pre>";

$insert = "INSERT INTO tblmarkers (fldname) VALUES('spielplatz')";
echo $insert."<br>";

?>