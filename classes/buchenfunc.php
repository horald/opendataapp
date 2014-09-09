<?php
header("content-type: text/html; charset=utf-8");

function bucheninput($menu,$idwert) {
  echo "<form class='form-horizontal' method='post' action='buchen.php?menu=".$menu."&idwert=".$idwert."&buchen=1'>";
  echo "<fieldset>";
  echo "<div class='control-group'>";

  
  echo "  <div class='form-actions'>";
  echo "     <button type='submit' name='submit' class='btn btn-primary'>OK</button>";
  echo "     <button class='btn'>Abbruch</button>";
  echo "  </div>";
  echo "</div>";
  echo "</fieldset>";
  echo "</form>";

}

function buchenausfuehren() {

}

?>