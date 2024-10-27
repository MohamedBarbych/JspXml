<%@ page errorPage="/WEB-INF/erreur.jsp" %>
<html>
<head><title>Inscription</title></head>
<body>
<form action="valider.jsp" method="post">
  <table border="1" align="center">
    <tr><td>Nom</td><td><input type="text" name="nom"/></td></tr>
    <tr><td>Prénom</td><td><input type="text" name="prenom"/></td></tr>
    <tr><td>Adresse</td><td><input type="text" name="adresse"/></td></tr>
    <tr><td>Mot de Passe</td><td><input type="password" name="motDePasse"/></td></tr>
  </table>
  <p align="center"><input type="submit" value="Nouvel utilisateur"></p>
</form>
</body>
</html>
