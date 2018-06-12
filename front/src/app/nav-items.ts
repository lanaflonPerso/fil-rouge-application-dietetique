export interface NavItem {
    // identifiant manipulé dans le code
    id: string;
    // attribut de la balise <a> pour l'afficher en survol
    title: string;
    // texte du lien cliquable
    anchor: string;
    // lien sur lequel on pointe
    link: string;
    // chemin de l'icône
    picto: string;
    // position de l'item de navigation
    position: string;
}
