<%@ page isErrorPage="true" %>
<html>
<head>
  <title>Erreur</title>
</head>
<body>
<h1>Une erreur est survenue</h1>
<p>Désolé, une erreur s'est produite lors du traitement de votre demande.</p>
<p><strong>Erreur:</strong> <%= exception.getMessage() %></p>
<p>Veuillez réessayer plus tard.</p>
<a href="index.html">Retour à l'accueil</a>
</body>
</html>
