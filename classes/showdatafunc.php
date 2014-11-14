<?php
header("content-type: text/html; charset=utf-8");

function myshowdata($pararray,$listarray,$idwert,$gdbtyp) {
  include("../config.php");

  $query = "SELECT * FROM ".$pararray['dbtable']." WHERE ".$pararray['fldindex']."='$idwert'";
  //echo $query."<br>";
  $result = db_query($query,"",$gdbtyp);
  $line = db_fetch($result,$gdbtyp);
  //echo "showdata<br>";
  echo "<table>";
  //echo count($listarray)."=count<br>";
  $count=0;
  foreach ( $listarray as $arrelement )  
  {
    if ($arrelement['type']=="text") {
      $count=$count+1;
      $nachdemkomma = ($count / 2) - floor($count / 2);
      if ($nachdemkomma == 0.5) { 
        echo "<tr>";
      }

      echo "<td>";
        echo "          <div class='control-group'>";
        echo "            <label class='control-label' style='text-align:left' for='input01'>".$arrelement['label'].":</label>";
        echo "          </div>";

      echo "</td>";
      echo "<td>";
        echo "          <div class='control-group'>";
        echo "            <label class='control-label' style='text-align:left' >".$line[$arrelement['dbfield']]."</label>";
        echo "</div>";
      echo "</td>";
      if ($nachdemkomma == 0) {
        echo "</tr>";
      }
    }
  }
  if ($nachdemkomma == 0.5) {
    echo "</tr>";
  }
  echo "</table>";
}
?>