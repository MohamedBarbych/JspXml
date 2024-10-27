<%@ page errorPage="/WEB-INF/erreur.jsp" %>
<html>
<head><title>Authentification</title></head>
<body>
<form action="bienvenue.jsp" method="post">
  <table border="1" align="center">
    <tr><td>Nom</td><td><input type="text" name="nom"/></td></tr>
    <tr><td>Prénom</td><td><input type="text" name="prenom"/></td></tr>
    <tr><td>Mot de Passe</td><td><input type="password" name="motDePasse"/></td></tr>
  </table>
  <p align="center"><input type="submit" value="Valider"></p>
</form>
</body>
</html>
