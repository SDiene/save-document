<?php
$i=0;
do
{
$E1=rand(0,1000);
$E2=rand(0,1000);
$E3=rand(0,1000);
$i=$i+1;
}
while (!($E1%2!=0 && $E2%2==0 && $E3%2==0));
  echo "<p>$E1,$E2,$E3</p>";
echo 'resultat obtenu en '.$i.' coups';
 ?>
