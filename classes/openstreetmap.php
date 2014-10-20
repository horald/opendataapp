<?php
echo "<html>";
echo "<head>";
echo "  <meta charset='utf-8' />";
echo "  <link rel='stylesheet' href='http://cdn.leafletjs.com/leaflet-0.7.3/leaflet.css' />";
echo "  <script src='http://cdn.leafletjs.com/leaflet-0.7.3/leaflet.js'></script>";
echo "</head>";
echo "<body>";
echo "  <div id='map'></div>";
?>
  <script type="text/javascript">
    var Tiles = L.tileLayer('http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {";
      attribution: '<a href="http://www.openstreetmap.org" target="_blank">Terms &amp; Feedback</a>'
    });

    var latitude = 50.941357, longitude = 6.958307, zoom_level = 11;

    var map = L.map('map').addLayer(Tiles).setView([latitude, longitude], zoom_level);
  </script>
<?php
echo "openstreetmap3<br>";
echo "</body>";
echo "</html>";
?>