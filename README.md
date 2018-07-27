# fil-rouge-application-dietetique

## Description
DietCare est une application de gestion de base de données alimentaire permettant de connaitre la qualité nutritive de chaque aliment et de constituer des recette et repas.

## Documentation

### [Manuel déploiement](https://github.com/turbo-xav/fil-rouge-application-dietetique/releases/download/v1.0.2/dietcare-dev-et-deploiement.docx)

### [Guide utilisateur](https://github.com/turbo-xav/fil-rouge-application-dietetique/releases/download/v1.0.2/dietcare-guide-util.pptx)

### [Guide développement](https://github.com/turbo-xav/fil-rouge-application-dietetique/releases/download/v1.0.2/dietcare-dev-et-deploiement.docx)

## TODO
* front :
  * contrôle de valeur & format des champs
  * fonctionnalité de suppression des recettes, repas, moments et catégories
  * finir la Compodoc... (seuls les services ont été couverts)
  * faire les pages des rubriques du footer
  * améliorer l'ergonomie des listes d'aliments dans les recettes et repas
  * ajouter les recettes dans les repas
* back :
  * gestion des exceptions
  * finir la Javadoc... (seuls les controllers ont été couverts)
* finir la doc de dev
* finir la doc utilisateur

## Bugs connus
* Front :
  * Aliments :
    * Pagination KO sur page accueil aliments => temps chargement des 2800 aliments conséquent
