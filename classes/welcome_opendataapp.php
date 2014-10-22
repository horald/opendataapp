<?php
include("bootstrapfunc.php");
include("../config.php");

bootstraphead();
bootstrapbegin("Willkommen!","true");
echo "<div class='row-fluid'>";
echo "<pre>";
echo "<table>";
$version = file_get_contents("../version.txt");
echo "<tr><td>Version</td><td>: ".$version."</td></tr>";
echo "<tr><td>Datenbanktyp</td><td>: ".$gdbtyp."</td></tr>";
echo "<tr><td>URL unter</td><td>: <a href='http://community.codefor.de/spielplatzapp/index.php' target='_blank'>Opendataapp bei codefor.de</a></td></tr>";
echo "<tr><td>erstellt f&uumlr</td><td>: <a href='http://codefor.de/koeln/index.html' target='_blank'>codeforgermany</a></td></tr>";
echo "<tr><td>Sourcecode unter</td><td>: <a href='https://github.com/horald/opendataapp' target='_blank'>github:opendataapp</a></td></tr>";
echo "</table>";
echo "</pre>";
echo "</div>";
bootstrapend();
?>