<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <p>
    <h1>voici la liste de nos produits</h1>
  
<?php
$produits=array(
       $montant=>'montant',
       $prixU=>'prix unitaire',
       $qte=>'quantite',
       $qte=0,
       $montant=0,
       $prixU=0,
       $montant=$prixU*$qte,
    array('nom'=>'chaussures','prix unitaire'=>'25000','quantite'=>'45',$montant),
    array('nom'=>'chemises','prix unitaire'=>'10000fr','quantite'=>'35','montant'),
    array('nom'=>'pantallons','prix unitaire'=>'15000fr','quantite'=>'25','montant'),
    array('nom'=>'sous-vettements','prix unitaire'=>'5000fr','quantite'=>'60','montant'),
    array('nom'=>'tee-shirts','prix unitaire'=>'7500fr','quantite'=>'35','montant'),
    array('nom'=>'costumes','prix unitaire'=>'100000fr','quantite'=>'15','montant')
);
?>
<table border=5>
    <tr>
        <th>PRODUITS</th>
        <th>PRIX U</th>
        <th>QUANTITE</th>
        <th>MONTANT</th>
    </tr>
<?php
foreach($produits as $cle=>$tab){
    foreach($tab as $key=>$valeur){
        echo '<th>'.$valeur.'</th>';
    }
    echo '<tr/>';
}

?>

</table>
    
</body>
</html>