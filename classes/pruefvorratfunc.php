<?php
header("content-type: text/html; charset=utf-8");
session_start();

function pruefvorrat($pararray) {
  echo "<h4>Ben&oumltigte Zutaten</h4><br>";
  include("../config.php");
  echo "<table class='table table-hover'>";
  echo "<thead>";
  echo "<th>Zutat</th>";
  echo "<th>Mengeneinheit</th>";
  echo "<th style='text-align:right'>ben&oumltigte Menge</th>";
  echo "<th style='text-align:right'>vorhandene Menge</th>";
  echo "<th style='text-align:right'>Rest</th>";
  echo "</thead>";
  $dbselarr = $_SESSION['DBSELARR'];
  //echo $_SESSION['DBSELARR'][0]."=id<br>";
  $query="SELECT * FROM ".$pararray['dbtable']." WHERE ".$pararray['fldindex']."=".$_SESSION['DBSELARR'][0];
  //echo $query."=query<br>";  
  $result = mysql_query($query) or die(mysql_error());
  $line = mysql_fetch_array($result);
  $idrezept=$line['fldid_rezepte'];
  $query="SELECT * FROM ".$pararray['dbtable']." WHERE fldid_rezepte=".$idrezept;
  $result = mysql_query($query) or die(mysql_error());
  while ($line = mysql_fetch_array($result)) {
    echo "<tr>";
    echo "<td>".$line[fldbez]."</td>";
    $qryme="SELECT * FROM tblmengein WHERE fldindex=".$line[fldid_me];
    $resme = mysql_query($qryme) or die(mysql_error());
    $linme = mysql_fetch_array($resme);
    echo "<td>".$linme[fldbez]."</td>";
    $mengezutat=$line[fldmenge];
    echo "<td style='text-align:right'>".$mengezutat."</td>";
//    echo $line[fldmenge]." x ".$line[fldbez]."<br>";
    $qryart="SELECT * FROM tblvorrat WHERE fldid_grundartikel=".$line[fldid_grundartikel];
    $resart = mysql_query($qryart) or die(mysql_error());
    $mengevorrat=0;
    while ($linart = mysql_fetch_array($resart)) {
    	//echo "==>".$linart[fldv01menge];
    	$mengevorrat=$mengevorrat+$linart[fldv01menge];
    }	
    echo "<td style='text-align:right'>".$mengevorrat."</td>";
    $diff=$mengevorrat-$mengezutat;
    echo "<td style='text-align:right'>".$diff."</td>";
    echo "</tr>";
  }
  echo "</table>";  
}

?>