<?php
echo '<p>Faite entrer un nombre</p>';
$n=9;
if($n%3==0 && $n%5==0)
{
  echo '<p>'.$n.' est des multiple de 3 et 5</p>';
}
else{
  echo ' '.$n.' n\' est pas divisible par 3 et 5 ';
}
 ?>
