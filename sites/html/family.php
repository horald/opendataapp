<?php
include("../../config.php");
<<<<<<< HEAD
include("bootstrapfunc.php");
=======
include("bootstrapfunc.php");
>>>>>>> ed66af43bd554edbfcdc552f7149a6ae70380d87
include("../../classes/translatefunc.php");
bootstraphead();
bootstrapbegin("Familie");
$idwert=$_GET['idwert'];
if ($mediawikimain<>"") {
  $bez=translate("HELP","Hilfe",$langshort);
  $qrymen="SELECT * FROM tblmenu_liste WHERE fldIndex=".$idwert;
  $resmen = mysql_query($qrymen) or die(mysql_error());
<<<<<<< HEAD
  $linmen = mysql_fetch_array($resmen); 
=======
  $linmen = mysql_fetch_array($resmen);
>>>>>>> ed66af43bd554edbfcdc552f7149a6ae70380d87
  if ($linmen['fldhelplink']<>"") {
    echo "<a class='btn btn-primary' href='".$mediawikipath.$linmen['fldhelplink']."'>".$bez."</a><br><br>";
  } else {
    echo "<a class='btn btn-primary' href='".$mediawikipath.$mediawikimain."'>".$bez."</a><br><br>";
  }
<<<<<<< HEAD
}  
=======
}
>>>>>>> ed66af43bd554edbfcdc552f7149a6ae70380d87
if (isset($idwert)) {
  $query="SELECT * FROM tblmenu_liste WHERE fldparent='".$idwert."' ORDER BY fldSort";
  $result = mysql_query($query) or die(mysql_error()." ".$query);
  echo "<ul>";
  while ($line = mysql_fetch_array($result)) {
  	 echo "<li>".$line['fldMenu']."</li>";
<<<<<<< HEAD
  }	 
  echo "</ul>";
}  
bootstrapend();
=======
  }
  echo "</ul>";
}
bootstrapend();
>>>>>>> ed66af43bd554edbfcdc552f7149a6ae70380d87
?>