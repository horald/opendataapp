<?php
header("content-type: text/html; charset=utf-8");

function ausarchivuebernehmen($archivtable) {
  $count = $_POST['count'];
  $cnt=0;
  if ($count>0) {
    for($zaehl = 1; $zaehl <= $count; $zaehl++)
    {
      $idcheck = $_POST['check'.$zaehl];
      if ($idcheck==1) {
	     $cnt=$cnt+1;
        $idwert = $_POST['idwert'.$zaehl];
        echo "<div class='alert alert-info'>";
        echo "Archivdatum:".$idwert."<br>";
        echo "</div>";
        $query = "UPDATE ".$archivtable." SET fldArchivdat='' WHERE fldArchivdat='".$idwert."'";
        $result = mysql_query($query) or die(mysql_error()." ".$query);
      }
    }
  echo "<div class='alert alert-success'>";
  echo $cnt." Daten aus dem Archiv übernommen.";
  echo "</div>";
  }
}

function ausarchivauswahl($menu,$idwert,$archivtable) {

  echo "<form class='form-horizontal' method='post' action='ausarchiv.php?menu=".$menu."&idwert=".$idwert."&ausarchiv=1'>";
  echo "<fieldset>";
  echo "<div class='control-group'>";
  echo "<table class='table table-hover'>";
  echo "<thead>";
  echo "<th><input type='checkbox' name='checkall'></th>";
  echo "<th>Archivdatum</th>";
  echo "</thead>";
  $query = "SELECT distinct fldArchivdat FROM ".$archivtable." WHERE fldArchivDat<>'' ORDER BY fldArchivDat";
  $result = mysql_query($query) or die(mysql_error());
  $cnt=0;
  while ($line = mysql_fetch_array($result)) { 
    $cnt=$cnt+1;
    echo "<tr>"; 
    echo "<input type='hidden' name='idwert".$cnt."' value=".$line[fldArchivdat].">";
    echo "<td><input type='checkbox' name='check".$cnt."' value='1'></td>";
    echo "<td>".$line['fldArchivdat']."</td>";
    echo "</tr>";    
  }
  echo "</table>";
  
  echo "<input type='hidden' name='count' value=".$cnt."/>";
  echo "  <div class='form-actions'>";
  echo "     <button type='submit' name='submit' class='btn btn-primary'>OK</button>";
  echo "     <button class='btn'>Abbruch</button>";
  echo "  </div>";
  echo "</div>";
  echo "</fieldset>";
  echo "</form>";

}
?>