<?php
include("updatewpfunc.php");
include("bootstrapfunc.php");
bootstraphead();
bootstrapbegin("Update");
$updatewp = $_GET['updatewp'];
if ($updatewp==1) {
  if (isset($_REQUEST['submit'])) { 
    updateausfuehren();
  } else {
    updateabbruch();     
  }  
} else {
  abfrageupdate();
}  
bootstrapend();

?>