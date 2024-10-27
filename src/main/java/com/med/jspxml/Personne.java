package com.med.jspxml;

public class Personne {
    private String nom;
    private String prenom;  // Changed from prénom to prenom
    private String motDePasse;
    private String adresse;

    public Personne() { }

    public String getNom() {
        return this.nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {  // Changed from getPrénom() to getPrenom()
        return this.prenom;
    }

    public void setPrenom(String prenom) {  // Changed from setPrénom() to setPrenom()
        this.prenom = prenom;
    }

    public String getMotDePasse() {
        return this.motDePasse;
    }

    public void setMotDePasse(String motDePasse) {
        this.motDePasse = motDePasse;
    }

    public String getAdresse() {
        return this.adresse;
    }

    public void setAdresse(String adresse) {
        this.adresse = adresse;
    }

    public boolean enregistrer() {
        selection_bdd s = new selection_bdd();
        if (s.dejaExist(nom, prenom)) {  // Changed from prénom to prenom
            return false;
        } else {
            Insertion_bdd f = new Insertion_bdd();
            f.ajout_etudiant(nom, prenom, motDePasse, adresse);  // Changed from prénom to prenom
            return true;
        }
    }

    public String identificateur() {
        selection_bdd s = new selection_bdd();
        String a = s.identificateur(nom, prenom);
        return a;
    }
}
