<?php
$n1=7;
$compteur=0;
$a=rand(0,250);
while($a%$n1!=0)
{
  
$compteur++;
}
echo "<p>$a est multiple de $n1: Resultat obtenu en $compteur coups</p>";
?>
