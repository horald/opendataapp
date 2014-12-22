<?php
include("bootstrapfunc.php");
include("../config.php");

bootstraphead();
bootstrapbegin("Willkommen!","true");
echo "<div class='row-fluid'>";
?>
<pre>
<h4>OpendataApp</h4>
Dies ist eine georeferenzierte Auflistung der Schulen in Köln.
Die Daten werden als Liste angezeigt oder auf einer Googlemap.
Diese Liste kann nach Schultyp, Schulart und Stadtbezirken gefiltert werden.
Die Liste wird mit php und postgres angezeigt. Dies ist sehr flexible und gibt die Möglichkeit
auch andere Daten zu visualisieren. Zur Zeit müssen die Daten erst in der Liste gefiltert werden,
damit die gefilterte Auswahl dann auf der Map angezeigt wird.

</pre>
<?php
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