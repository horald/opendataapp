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

     echo "function addMarker(lat, lng, info, complete) {";
     echo "        var pt = new google.maps.LatLng(lat, lng);";
     echo "        bounds.extend(pt);";
     echo "        var marker = null;";
     echo "        if( complete == 0 ){";
     echo "               marker = new google.maps.Marker({";
     echo "                        position: pt,";
     echo "                        icon: blue_icon,";
     echo "                        map: map";
     echo "                });";
     echo "       } else {";
     echo "               marker = new google.maps.Marker({";
     echo "                        position: pt,";
     echo "                        icon: red_icon,";
     echo "                        map: map";
     echo "                });";
     echo "       }";
     echo "       var popup = new google.maps.InfoWindow({";
     echo "                content: info,";
     echo "                maxWidth: 300";
     echo "       });";
     echo "       google.maps.event.addListener(marker, 'click', function() {";
     echo "                if (currentPopup != null) {";
     echo "                        currentPopup.close();";
     echo "                        currentPopup = null;";
     echo "                }";
     echo "                popup.open(map, marker);";
     echo "                currentPopup = popup;";
     echo "       });";
     echo "       google.maps.event.addListener(popup, 'click', function() {";
     echo "         popup.close();";
     echo "       });";
     echo "}";

     echo "function initMap(parameterliste) {";
     echo "  var i = 0;";

                     $query="SELECT * FROM tblorte WHERE fldaktiv='J'";
                     //echo $query."<br>";
                     $qryres = db_query($query," SELECT-Error",$gdbtyp);
                     $row = db_fetch($qryres,$gdbtyp);

                     $xkoor=$row['fldxkoor'];
                     $ykoor=$row['fldykoor']; 

     echo "  meinDS = parameterliste.split(';');";
//     echo "        map = new google.maps.Map(document.getElementById('map'), {";

//                     echo "center: new google.maps.LatLng(".$xkoor.", ".$ykoor."),";
                     //echo "center: new google.maps.LatLng(50.93664488843189, 6.961641311645508),";

//     echo "          zoom: 11,";
//     echo "          mapTypeId: google.maps.MapTypeId.ROADMAP,";
//     echo "          mapTypeControl: false,";
//     echo "          mapTypeControlOptions: {";
//     echo "                 style: google.maps.MapTypeControlStyle.HORIZONTAL_BAR";
//     echo "          },";
//     echo "          navigationControl: true,";
//     echo "          navigationControlOptions: {";
//     echo "                 style: google.maps.NavigationControlStyle.SMALL";
//     echo "          }";
//     echo "  });";

//     echo "    for (i=0; i < meinDS.length ; i++ ) {";
//     echo "      meinArray = meinDS[i].split(",");";
//     echo "      addMarker(meinArray[0], meinArray[1],'<a href="'+meinArray[2]+'">'+meinArray[3]+'</a>','desc','complete');";
//     echo "    }";

     echo "}";

     echo "</script>";
     echo "</head>";
echo "==>1g<br>";
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
