<?php
session_start();
$menu=$_GET[menu];
include("../config.php");
include("dbtools.php");
include("bootstrapfunc.php");
include("../sites/views/wp_".$menu."/showtab.inc.php");

     echo "<html>";
     echo "<head>";
     echo "<meta http-equiv='content-type' content='text/html; charset=utf-8'/>";
     echo "<title>Google Map</title>";
     echo "<style type='text/css'>";
     echo " body { font: normal 10pt Helvetica, Arial; }";
     echo " #map { width: 640px; height: 480px; border: 0px; padding: 0px; }";
     echo "</style>";
     echo "<script src='http://maps.google.com/maps/api/js?v=3&sensor=false' type='text/javascript'></script>";
     echo "<script type='text/javascript'>";

     echo "var blue_icon = new google.maps.MarkerImage('http://maps.google.com/mapfiles/ms/micons/blue.png',";
     echo "        new google.maps.Size(32, 32), new google.maps.Point(0, 0),";
     echo "        new google.maps.Point(16, 32)";
     echo ");";
     echo "var red_icon = new google.maps.MarkerImage('http://labs.google.com/ridefinder/images/mm_20_red.png',";
     echo "        new google.maps.Size(32, 32), new google.maps.Point(0, 0),";
     echo "        new google.maps.Point(16, 32)";
     echo ");";
     echo "var center = null;";
     echo "var map = null;";
     echo "var currentPopup;";
     echo "var bounds = new google.maps.LatLngBounds();";

     echo "</script>";
     echo "</head>";
echo "==>1c<br>";
     $dbselarr = $_SESSION['DBSELARR'];
     $count=sizeof($dbselarr);
     //echo $count."=count<br>";
     $query="SELECT * FROM ".$pararray['dbtable'];
     //echo $query."<br>";
     $qryres = db_query($query," SELECT-Error",$gdbtyp);
     $ds="";
     for ( $x = 0; $x < $count; $x++ ) {
//     while ($row = db_fetch($qryres,$gdbtyp)){
        $arrquery="SELECT * FROM ".$pararray['dbtable']." WHERE fldindex=".$dbselarr[$x];
        //echo $arrquery."<br>";
        $qryarr = db_query($arrquery," SELECT-Error",$gdbtyp);
        $row = db_fetch($qryarr,$gdbtyp);
        $name=$row['fldname'];
        $ds=$ds.$row['fldxkoor'].",".$row['fldykoor'].",".$row['fldlink'].",".$name.";";
     }	
     $array=chr(34).$ds.chr(34);
     echo "<body onload='initMap(".$array.")' style='margin:0px; border:0px; padding:0px;'>";
     echo "<div id='map'></div>";
     echo "</body>";
     
     echo "</html>";
?>
