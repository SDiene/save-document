   
   <p>
   <a href="test.php?nom=fall&prenom=demba&repeter=2">Dis-moi bonjour !</a>
   <form method="POST" action="test.php">
    <p> Page d'acceuil</P>
    <p>Je sais comment tu t'appelles, hé hé. Tu t'appelles 
         <input type="text" name="prenom" />
       <textarea name="message" rows="8" cols="45">Votre message ici.</textarea>
       <input type="submit" value="Valider" /> 
    !</p>
    <p>Si tu veux changer de prénom, <a href="authentification.php">cliqueici</a> pour revenir à la page formulaire.php.</p>
   </form>
   
   </p>
   

<?php
 
/*$jour=date('d');
$mois=date('m');
$année=date('Y');

$heure=date('H');
$minute=date('i');
echo "La fonction de type date <br/>";
echo 'Bonjour aujourd\'hui nous sommes le '.$jour.' '.$mois.' mois '.$année.' et il est '.$heure.'h '.$minute.' mn.<br/>';
echo "C'est le Serveur qui donne l'heure et la date <br/><br/>";
echo "Créer sa propre fonction qui dit Bonjour <br/>";
function DireBonjour($name)
{
    echo 'Bonjour '.$name. '<br/>';
}
DireBonjour('Marie');
DireBonjour('Jeans');
DireBonjour('Codou');
DireBonjour('Fatou');
DireBonjour('Sidy');
DireBonjour('Lamine');
DireBonjour('Aminata');
*/

/*
echo "Compter le nombre de caractéres dans une chaines <br/> ";
$chaine="Je suis débutant en programmation";
$longueurchaine=strlen($chaine);
echo 'Il existe '.$longueurchaine. ' caractéres dans la phrase : '.$chaine. '<br/> <br/>';

echo "Remplacer une chaine de caractere par une autre <br/> ";
$mavariable=str_replace('b', 'p', 'code Acacdemy');
echo 'La chaine Remplacer donne : '.$mavariable.'<br/> <br/>';

echo "Mélanger une chaine de caractere <br/> ";
$phrase=' je suis debutant en programmation';
$melange=str_shuffle($phrase);
echo 'Si on melange la phrase : '.$phrase.' ça donne : '.$melange.'<br/> <br/>';

echo 'ecrire une chaine en miniscule <br/>'; 
$texte='QUI EST LA';
$miniscule=strtolower($texte);
echo 'Ce texte : '.$texte.' convertit en strtolower() donne en minuscule : '.$miniscule.'<br/> ';
echo 'Il existe aussi une fonction strtoupper() qui fait l\'inverse de strtolower()';
*/

/*
$prenoms = array ('Prenom'=>'Diakite', 'Nom'=>'Backée Backée');
foreach($prenoms as $element =>$cle){
    echo $element .' reçoit '.$cle.'<br/>'; 
    // affichera $prenom[0],$prenom[1]......
}*/

/*
boucle for avec les tableaux
$prenoms = array ('François', 'Michel', 'Nicole',
 'Véronique','Benoît');
// Puis on fait une boucle pour tout afficher :
for ($numero = 0; $numero < 5; $numero++)
{
echo $prenoms[$numero] . '<br />';
}
/*
//tableau associatif
/*
// On crée notre array $coordonnees
$coordonnees['prenom'] = 'François';
$coordonnees['nom'] = 'Dupont';
$coordonnees['adresse'] = '3 Rue du Paradis';
$coordonnees['ville'] = 'Marseille';
echo $coordonnees['prenom']; 
echo '<br>';
echo $coordonnees['nom'];
echo '<br>';
echo $coordonnees['adresse'];
*/

// tableau numérote 
/*$prenom[]='diene';
echo $prenom[0]. "<br>";
*/


/*for ($i=1; $i<=10 ; $i+=1) { 
    echo "Je suis un texte php"."<br>";
}
*/

/*$age=-10;
switch ($age) {
    case 10:
    echo "tu es un ados";
        break;
    case 18:
    echo "vous etes jeune";
    break;
    case 25:
    echo "Vous etes un adulte et majeur";
    break;
    default:
         echo" est ce que nit gua ba parer";
        break;
}
*/

 /*$garçon = "garçon"; 
 $fille="fille";
 if ($age==12 && $garçon) {
     echo"Je suis un $garçon et j'ai $age ans";
 } else {
     echo "Je suis une $fille et j'ai $age ans ";
 }*/
 
 /*$autorisation=true;
 if ($autorisation) {
     echo"Vous avez accée au salle de sport";
 } else {
     echo"Accée denied";
 }

 */
 /*$age=15;
 if ($age<=10) {
    echo "Salut gamin !";
 }elseif ($age<=18) {
     echo "Salut jeune"; 
 }else {
     echo "Salut adult";
 }*/
 
?>