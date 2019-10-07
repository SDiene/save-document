<?php
$clef= array("Doudou "=>array("prenom"=>"Fallou","ville"=>"Saint louis","age"=>100),
"sidi "=>array("prenom"=>"Fallou","ville"=>"Saint louis","age"=>100));

foreach ($clef as $key => $valeur) {
echo "<b>Personnage $key: </b> </br>";
foreach ($valeur as $mat => $val) {
echo "$mat: $val<br>" ;
}
}

?>
