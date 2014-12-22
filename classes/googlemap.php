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
