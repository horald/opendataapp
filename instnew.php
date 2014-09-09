<?php
include("instnewfunc.php");
include("bootstrapfunc.php");
bootstraphead();
bootstrapbegin("Installation");
$instnew = $_GET['instnew'];
if ($instnew==1) {
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