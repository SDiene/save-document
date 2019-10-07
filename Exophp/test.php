<!Doctype html>
<head>
<meta charset="utf-8">
<title>Transmission avec l'url </title>
</head>
<body>
   <?php //echo $_GET['prenom'] . ' ' . $_GET['nom'];
   if (isset($_GET['prenom']) AND isset($_GET['nom']) AND isset($_GET['repeter'])) // On a le nom et le prénom
   {
       $_GET['repeter'] = (int) $_GET['repeter'];
      if ($_GET['repeter']>=1 && $_GET['repeter'] <=5) {
         for ($i=0; $i < $_GET ['repeter']; $i++) { 
           echo 'Bonjour ' . $_GET['prenom'] . ' ' . $_GET['nom'] . ' ! <br/>';
         }
      }
   }
   else // Il manque des paramètres, on avertit le visiteur
   {
   echo 'Il faut renseigner un nom, un prénom et un nombre de repetition !';
   }
   ?> 
 
</body>
</html>
   
 