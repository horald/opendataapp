<?php

function db_query($query,$error,$dbtyp) {
  //include("../config.php");
  //echo $dbtyp."=in query<br>";
  switch ($dbtyp) {
    case "mysql":
      $result = mysql_query($query) or die(mysql_error().$error);
    break;
    case "postgres":
      $result = pg_query($query) or die(pg_last_error().$error);
    break;
  }
  return $result;
}

function db_fetch($result,$dbtyp) {
  //include("../config.php");
  //echo $dbtyp."=in fetch<br>";
  switch ($dbtyp) {
    case "mysql":
      $row = mysql_fetch_array($result);
    break;
    case "postgres":
      $row = pg_fetch_assoc($result);
    break;
  }
  return $row;
}

function db_insert_id($dbtyp) {
  switch ($dbtyp) {
    case "mysql":
      $row = mysql_insert_id();
    break;
    case "postgres":
//      $row = pg_fetch_assoc($result);
    break;
  }
  return $row;
}

?>