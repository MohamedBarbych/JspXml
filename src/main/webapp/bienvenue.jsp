<%@ page errorPage = "/WEB-INF/erreur.jsp" import="com.med.jspxml.*" %>
<jsp:useBean id="utilisateur" class="com.med.jspxml.Personne" scope="session">
  <jsp:setProperty name="utilisateur" property="*" />
</jsp:useBean>

<%! String idPersonne = ""; %>
<%! String identite = "A tout le monde"; %>

<%
  // Get the identifier from the utilisateur bean
  idPersonne = utilisateur.identificateur();

  // Optionally store the identifier in session
  session.setAttribute("idPersonne", idPersonne);
%>

<html>
<head><title>Bienvenue</title></head>
<body>
<% System.out.println("Bonjour : "); %>
<strong> <%= utilisateur.getNom() %></strong>
<strong> <%= utilisateur.getPrenom() %> </strong>
<strong> <%= ", Votre identifiant est " + idPersonne %> </strong>
<strong> <%= ", et votre mot de passe est " + utilisateur.getMotDePasse() %> </strong>
<% session.removeAttribute("utilisateur"); %>
</body>
</html>
