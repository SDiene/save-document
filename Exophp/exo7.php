<?php
//Il faut $A > $B
$A=56952;
$B=3444;
try
{
if(!(is_integer($A) OR is_integer($b)))
{throw new Exception("<p>Nombre(s) non entiers !</p>",99);}
else
{
echo "<p>Le PGCD de $A et $B est : </p>";
do
{
$R=$A%$B;
$A=$B;
$B=$R;
}
while($R!=0);
echo $A ;
}
}
catch(Exception $except)
{
echo $except->getMessage();
}

?>
