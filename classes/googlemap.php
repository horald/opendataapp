<?php
session_start();
$menu=$_GET[menu];
include("../config.php");
include("dbtools.php");
include("bootstrapfunc.php");
include("../sites/views/wp_".$menu."/showtab.inc.php");

echo "googlemap";
     echo "<html>";
     echo "<head>";

?>
     <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
     <title>Google Map</title>
     <style type="text/css">
     body { font: normal 10pt Helvetica, Arial; }
     #map { width: 640px; height: 480px; border: 0px; padding: 0px; }
     </style>
     <script src="http://maps.google.com/maps/api/js?v=3&sensor=false" type="text/javascript"></script>
     <script type="text/javascript">

     var blue_icon = new google.maps.MarkerImage("http://maps.google.com/mapfiles/ms/micons/blue.png",
             new google.maps.Size(32, 32), new google.maps.Point(0, 0),
             new google.maps.Point(16, 32)
     );
     var red_icon = new google.maps.MarkerImage("http://labs.google.com/ridefinder/images/mm_20_red.png",
             new google.maps.Size(32, 32), new google.maps.Point(0, 0),
             new google.maps.Point(16, 32)
     );
     var center = null;
     var map = null;
     var currentPopup;
     var bounds = new google.maps.LatLngBounds();

     function addMarker(lat, lng, info, complete) {
             var pt = new google.maps.LatLng(lat, lng);
             bounds.extend(pt);
             var marker = null;
             if( complete == 0 ){
                    marker = new google.maps.Marker({
                             position: pt,
                             icon: blue_icon,
                             map: map
                     });
            } else {
                    marker = new google.maps.Marker({
                             position: pt,
                             icon: red_icon,
                             map: map
                     });
            }
            var popup = new google.maps.InfoWindow({
                     content: info,
                     maxWidth: 300
            });
            google.maps.event.addListener(marker, "click", function() {
                     if (currentPopup != null) {
                             currentPopup.close();
                             currentPopup = null;
                     }
                     popup.open(map, marker);
                     currentPopup = popup;
            });

            google.maps.event.addListener(popup, "click", function() {
              popup.close();            
            });
           
     }

     function initMap(parameterliste) {
       var i = 0;     	

       meinDS = parameterliste.split(";");

     }

     </script>
<?php
     echo "</head>";
     $dbselarr = $_SESSION['DBSELARR'];
     $count=sizeof($dbselarr);
     //echo $count."=count<br>";
     $query="SELECT * FROM ".$pararray['dbtable'];
     //echo $query."<br>";
     $qryres = db_query($query," SELECT-Error",$gdbtyp);
     $ds="";
     for ( $x = 0; $x < $count; $x++ ) {
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
