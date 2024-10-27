<%@ page errorPage = "/WEB-INF/erreur.jsp" import="com.med.jspxml.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><title>Pages</title></head>
<body>

<jsp:useBean id="utilisateur" class="com.med.jspxml.Personne" scope="session">
  <jsp:setProperty name="utilisateur" property="*" />
  <table border="1" cellpadding="3" cellspacing="2" width="50%" align="center">
    <tr>
      <td width="100"><b>Nom</b></td>
      <td><jsp:getProperty name="utilisateur" property="nom" /></td>
    </tr>
    <tr>
      <td width="100"><b>Prénom</b></td>
      <td><jsp:getProperty name="utilisateur" property="prenom" /></td>  <!-- Updated to "prenom" -->
    </tr>
    <tr>
      <td width="100"><b>Mot de passe</b></td>
      <td><jsp:getProperty name="utilisateur" property="motDePasse" /></td>
    </tr>
    <tr>
      <td width="100"><strong>Adresse</strong></td>
      <td><jsp:getProperty name="utilisateur" property="adresse" /></td>
    </tr>
  </table>
</jsp:useBean>

<h3 align="center">
  <% if (!utilisateur.enregistrer()) {
    System.out.println("<script language='JavaScript' type='text/javascript'>alert('Utilisateur déjà existant!');window.location.href='inscription.jsp';</script>");
    session.removeAttribute("utilisateur");
  } else {
    System.out.println("<script language='JavaScript' type='text/javascript'>alert('Nouveau utilisateur enregistré!');window.location.href='inscription.jsp';</script>");
  } %>
</h3>
<br>
</body>
</html>
