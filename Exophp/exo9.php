<?php
$clef= array("doudou "=>array("fallou","Saint louis",100),"sidi "=>array("fallou","Saint louis",100));

foreach ($clef as $key => $valeur) {
echo "<b>Principale $key: </b> </br>";
foreach ($valeur as $mat => $val) {

echo "$mat: $val<br>" ;
}
}

?>
