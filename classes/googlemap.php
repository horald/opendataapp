<?php
session_start();
$menu=$_GET[menu];
$menu="playground";
//echo $menu."=menu<br>";
include("../config.php");
include("dbtools.php");
include("bootstrapfunc.php");
include("../sites/views/wp_".$menu."/showtab.inc.php");
/**
 * OSM-Karte
 *
 * PHP Plugin
 *
 * @author          Thomas Kipf, www.intercycloon.de
 * @copyright       Copyright 2005-2013, RRZE
 * @license         CC-A 2.0 (http://creativecommons.org/licenses/by/2.0/)
 * @link            http://www.vorlagen.uni-erlangen.de
 * @version         1.1
 * @lastmodified    02/2013
 Link: http://www.vorlagen.uni-erlangen.de/vorlagen/karten.shtml
 */
//echo "<legende>osm-karte</legende>"; 
echo $_SERVER["DOCUMENT_ROOT"]."=root<br>";
//echo $_SERVER["HTTP_HOST"]."=http_host<br>";
// defaults
$defaults = array(
    'width' => '600px',
    'height' => '400px',    
//    'lon' => '11.02751',
//    'lat' => '49.573781',
//    'zoom' => '16',
    'lon' => '6.961362',
    'lat' => '50.937810',
    'zoom' => '11',
    'desc' => '<strong>Regionales Rechenzentrum</strong><br />Martensstra&szlig;e 1<br />91058 Erlangen',
    'icontype' => 'default',
    'scale' => '1',
    'attribution' => '1',
    'zoombar' => '1',
    'xml' => '',
    'tileurl' => 'http://osm.rrze.fau.de/osmde/${z}/${x}/${y}.png'
);

echo "osm1";
// load options
$fpath = 'options.conf';
$fpath_alternative = $_SERVER["DOCUMENT_ROOT"].'/vkdaten/osm-karte.conf';
if(file_exists($fpath_alternative)){ $fpath = $fpath_alternative; }
$options = array();
$fh = fopen($fpath, 'r') or die('Cannot open file!');
while(!feof($fh)) {
    $line = fgets($fh);
    $line = trim($line);
    if((strlen($line) == 0) || (substr($line, 0, 1) == '#')) {
        continue; // ignore comments and empty rows
    }
    $arr_opts = preg_split('/\t/', $line); // tab separated
    $options[$arr_opts[0]] = $arr_opts[1];
}
fclose($fh);

echo "osm2";
// merge defaults with options
$options = array_merge($defaults, $options);

// load pathinfo
if(isset($_SERVER['PATH_INFO'])){
	$pathinfo = split("/", $_SERVER['PATH_INFO']);
	if(!empty($pathinfo[1])){ $options['xml'] = filter_var($pathinfo[1], FILTER_VALIDATE_REGEXP, array("options"=>array("regexp"=>"/^[a-z]*$/")));  }
	if(!empty($pathinfo[2])){ $options['width'] = filter_var($pathinfo[2], FILTER_VALIDATE_REGEXP, array("options"=>array("regexp"=>"/^[0-9px\%]{2,7}$/")));  }
	if(!empty($pathinfo[3])){ $options['height'] = filter_var($pathinfo[3], FILTER_VALIDATE_REGEXP, array("options"=>array("regexp"=>"/^[0-9px\%]{2,7}$/")));  }
	if(!empty($pathinfo[4])){ $options['lon'] = filter_var($pathinfo[4], FILTER_VALIDATE_REGEXP, array("options"=>array("regexp"=>"/^[0-9\.]{2,15}$/")));  }
	if(!empty($pathinfo[5])){ $options['lat'] = filter_var($pathinfo[5], FILTER_VALIDATE_REGEXP, array("options"=>array("regexp"=>"/^[0-9\.]{2,15}$/")));  }
	if(!empty($pathinfo[6])){ $options['zoom'] = filter_var($pathinfo[6], FILTER_VALIDATE_REGEXP, array("options"=>array("regexp"=>"/^[0-9]{1,2}$/")));  }
}

echo "osm3";
// load get variables
if(!empty($_GET['xml'])){ $options['xml'] = filter_var($_GET['xml'], FILTER_VALIDATE_REGEXP, array("options"=>array("regexp"=>"/^[a-z]*$/")));  }
if(!empty($_GET['width'])){ $options['width'] = filter_var($_GET['width'], FILTER_VALIDATE_REGEXP, array("options"=>array("regexp"=>"/^[0-9px\%]{2,7}$/")));  }
if(!empty($_GET['height'])){ $options['height'] = filter_var($_GET['height'], FILTER_VALIDATE_REGEXP, array("options"=>array("regexp"=>"/^[0-9px\%]{2,7}$/")));  }
if(!empty($_GET['lon'])){ $options['lon'] = filter_var($_GET['lon'], FILTER_VALIDATE_REGEXP, array("options"=>array("regexp"=>"/^[0-9\.]{2,15}$/")));  }
if(!empty($_GET['lat'])){ $options['lat'] = filter_var($_GET['lat'], FILTER_VALIDATE_REGEXP, array("options"=>array("regexp"=>"/^[0-9\.]{2,15}$/")));  }
if(isset($_GET['zoom'])){ $options['zoom'] = filter_var($_GET['zoom'], FILTER_VALIDATE_REGEXP, array("options"=>array("regexp"=>"/^[0-9]{1,2}$/")));  }
if(!empty($_GET['desc'])){ $options['desc'] = filter_var($_GET['desc'], FILTER_VALIDATE_REGEXP, array("options"=>array("regexp"=>"/^[\w\s]{1,70}$/")));  }
if(!empty($_GET['icontype'])){ $options['icontype'] = filter_var($_GET['icontype'], FILTER_VALIDATE_REGEXP, array("options"=>array("regexp"=>"/^[a-z\-]{1,20}$/")));  }
if(isset($_GET['scale'])){ $options['scale'] = filter_var($_GET['scale'], FILTER_VALIDATE_REGEXP, array("options"=>array("regexp"=>"/^[0-1]{1}$/")));  }
if(isset($_GET['attribution'])){ $options['attribution'] = filter_var($_GET['attribution'], FILTER_VALIDATE_REGEXP, array("options"=>array("regexp"=>"/^[0-1]{1}$/")));  }
if(isset($_GET['zoombar'])){ $options['zoombar'] = filter_var($_GET['zoombar'], FILTER_VALIDATE_REGEXP, array("options"=>array("regexp"=>"/^[0-1]{1}$/")));  }
if (isset($_GET['tiles'])) {
  // Do NOT allow to set tileurl directly!
  if ($_GET['tiles'] == "rrze-osmde") { $options['tileurl'] = 'http://osm.rrze.fau.de/osmde/${z}/${x}/${y}.png'; }
  if ($_GET['tiles'] == "rrze-osmorg") { $options['tileurl'] = 'http://osm.rrze.fau.de/tiles/${z}/${x}/${y}.png'; }
  if ($_GET['tiles'] == "osmorg") { $options['tileurl'] = 'http://tile.openstreetmap.org/${z}/${x}/${y}.png'; }
}

echo "osm4";

     $dbselarr = $_SESSION['DBSELARR'];
     $count=sizeof($dbselarr);
     //echo $count."=count<br>";
     $query="SELECT * FROM ".$pararray['dbtable'];
     //echo $query."<br>";
     $qryres = db_query($query," SELECT-Error",$gdbtyp);
     $ds="";
     for ( $x = 0; $x < $count; $x++ ) {
        $arrquery="SELECT * FROM ".$pararray['dbtable']." WHERE fldindex=".$dbselarr[$x];
        //echo $arrquery.",".$gdbtyp."<br>";
        $qryarr = db_query($arrquery," SELECT-Error",$gdbtyp);
        $row = db_fetch($qryarr,$gdbtyp);
        $name=$row['fldname'];
        $ds=$ds.$row['fldxkoor'].",".$row['fldykoor'].",".$row['fldlink'].",".$name.";";
        //echo $x.",".$row['fldxkoor']."=marker<br>";
        $markers[$x][lat] = $row['fldxkoor'];
        $markers[$x][lng]  = $row['fldykoor'];
        $markers[$x][label] = '<a href="showdata.php?menu=playground&idwert='.$dbselarr[$x].'">'.$row['fldname'].'</a>';
        if ($row['fldspielplatzpaten']=='x') {
          $markers[$x][icontype] = 'green';
          if ($row['fldtischtennis']=='x') {
            $markers[$x][icontype] = 'yellow';
          }
        } else {
          $markers[$x][icontype] = 'red';
          if ($row['fldtischtennis']=='x') {
            $markers[$x][icontype] = 'blue';
          }
        }
     }	

echo "osm5";
?>

<script type="text/javascript" src="http://osm.rrze.uni-erlangen.de/OpenLayers.js"></script>
<script type="text/javascript">                
    var map, markers;
    function addMarker(lonlat, popupContentHTML, iconType) {
        var size = new OpenLayers.Size(21,25);
        var offset = new OpenLayers.Pixel(-(size.w/2), -size.h);
        var feature = new OpenLayers.Feature(markers, lonlat.transform(new OpenLayers.Projection("EPSG:4326"), map.getProjectionObject()));
        feature.closeBox = true;
        feature.popupClass = OpenLayers.Popup.FramedCloud;
        feature.data.popupContentHTML = popupContentHTML;
        feature.data.icon = new OpenLayers.Icon('http://<?php echo $_SERVER["HTTP_HOST"]; ?>/tools/osm/image/'+iconType+'.png', size, offset);
        feature.layer.div.style.cursor = 'pointer';
        var marker = feature.createMarker();
        var markerClick = function (evt) {
                if (this.popup == null) {
                    this.popup = this.createPopup(this.closeBox);        
                    map.addPopup(this.popup);
                    this.popup.show();
                } else {
                    this.popup.toggle();
                }
                currentPopup = this.popup;
                OpenLayers.Event.stop(evt);
            };
        marker.events.register("mousedown", feature, markerClick);
        markers.addMarker(marker);
    }
    window.onload = function () {
        var attr =  new OpenLayers.Control.Attribution();
        var scale = new OpenLayers.Control.ScaleLine({bottomOutUnits: false, bottomInUnits: false});
        map = new OpenLayers.Map('map', {
            controls: [<?php echo $options['scale']?'scale, ':''; ?><?php echo $options['attribution']?'attr, ':''; ?><?php echo $options['zoombar']?'new OpenLayers.Control.PanZoomBar()':'new OpenLayers.Control.PanZoom()'; ?>, new OpenLayers.Control.Navigation()]
        });
        <?php if($options['attribution']){ ?>attr.div.style.bottom = '5px';
        attr.div.style.right = '7px';<?php } ?>
        <?php if($options['scale']){ ?>scale.div.style.bottom = '7px';
        scale.div.style.left = '7px';<?php } ?>
        var ll = new OpenLayers.LonLat(<?php echo $options['lon']; ?>, <?php echo $options['lat']; ?>);
        map.addLayer(new OpenLayers.Layer.OSM('OpenStreetMap', '<?php echo $options['tileurl']; ?>'));
        map.setCenter(ll.transform(new OpenLayers.Projection("EPSG:4326"), map.getProjectionObject()), <?php echo $options['zoom']; ?>);
        markers = new OpenLayers.Layer.Markers();
        map.addLayer(markers);
        <?php if(!is_array($markers)){ ?>addMarker(new OpenLayers.LonLat(<?php echo $options['lon']; ?>, <?php echo $options['lat']; ?>), '<?php echo $options['desc']; ?>', '<?php echo $options['icontype']; ?>');<?php } ?>
        <?php foreach($markers as $marker){ ?>addMarker(new OpenLayers.LonLat(<?php echo $marker['lng']; ?>, <?php echo $marker['lat']; ?>), '<strong><?php echo $marker['label']; ?></strong><br /><?php echo $marker['infowindow']; ?>', '<?php echo ($marker['icontype']?$marker['icontype']:'default'); ?>');<?php } ?>
    };
</script>   
<div id="map" style="width:<?php echo $options['width']; ?>; height: <?php echo $options['height']; ?>;"></div>
<div>Legende:
<img src="http://<?php echo $_SERVER["HTTP_HOST"]; ?>/tools/osm/image/red.png" alt="red"> - ohne Spielplatzpaten
<img src="http://<?php echo $_SERVER["HTTP_HOST"]; ?>/tools/osm/image/green.png" alt="green"> - mit Spielplatzpaten
<img src="http://<?php echo $_SERVER["HTTP_HOST"]; ?>/tools/osm/image/blue.png" alt="blue"> - Tischtennis
<img src="http://<?php echo $_SERVER["HTTP_HOST"]; ?>/tools/osm/image/yellow.png" alt="yellow"> - Spielplatzpaten und Tischtennis
</div>