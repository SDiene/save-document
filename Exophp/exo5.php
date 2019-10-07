<?php
for($i=11;$i<=36;$i++)
{
$tab[$i]=chr(54+$i);
}
for($i=11;$i<=36;$i++)
{
echo "<p>Element d'indice $i : $tab[$i]
</p>";
}
foreach($tab as $cle=>$valeur)
{
echo "<p>Element d'indice $cle : $valeur
</p>";
}
?>
