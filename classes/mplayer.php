<?php
$menu=$_GET[menu];
$idwert=$_GET[idwert];
include("../config.php");
include("bootstrapfunc.php");
include("../sites/views/wp_".$menu."/showtab.inc.php");
bootstraphead();
bootstrapbegin($pararray['headline']);

$query="SELECT * FROM ".$pararray['dbtable']." WHERE ".$pararray['fldindex']."=".$idwert;
$result = mysql_query($query) or die(mysql_error());
$line = mysql_fetch_array($result);
$audio = $line['fldlink'];
//echo $line['fldlink']."<br>";

?>

<OBJECT ID="MediaPlayer1" CLASSID="CLSID:22d6f312-b0f6-11d0-94ab-0080c74c7e95" CODEBASE="http://activex.microsoft.com/activex/controls/mplayer/en/nsmp2inf.cab# Version=5,1,52,701" STANDBY="Loading Microsoft Windows® Media Player components..." TYPE="application/x-oleobject" width="280" height="46">
<param name="fileName" value="http://www.wdr.de/wdrlive/media/kiraka.m3u">
<param name="animationatStart" value="true">
<param name="transparentatStart" value="true">
<param name="autoStart" value="true">
<param name="showControls" value="true">
<param name="Volume" value="-300">
<embed type="application/x-mplayer2" pluginspage="http://www.microsoft.com/Windows/MediaPlayer/" src="http://www.wdr.de/wdrlive/media/kiraka.m3u" name="MediaPlayer1" width=280 height=46 autostart=1 showcontrols=1 volume=-300>
</OBJECT> 


<?php


//$audio="http://developer.mozilla.org/@api/deki/files/2926/=AudioTest_(1).ogg";
echo $audio."<br>";
echo "<audio src='".$audio."' autoplay>";
echo "  Your browser does not support the <code>audio</code> element.";
echo "</audio>";

//echo "<div id='jplayer' class='jp-jplayer' style='width: 640px; height: 460px; display: block;'>";
//echo "<img id='jp_poster_1' style='width: 640px; height: 460px; display: none;'>";
//echo "<object id='jp_flash_1' width='1' height='1' data='../includes/jplayer/Jplayer.swf' type='application/x-shockwave-flash' style='width: 0px; height: 0px;'>";
//echo "<param name='flashvars' value='jQuery=jQuery&id=jplayer&vol=0.8&muted=false'>";
//echo "<param name='allowscriptaccess' value='always'>";
//echo "<param name='bgcolor' value='#000000'>";
//echo "<param name='wmode' value='opaque'>";
//echo "</object>";
//echo "</div>";

bootstrapend();
?>