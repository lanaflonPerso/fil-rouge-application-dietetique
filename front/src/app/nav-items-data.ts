import { NavItem } from './nav-items';

const NAV_ITEMS_DATA: NavItem[] =
[
    {
        id: 'home',
        title: 'Page d\'accueil',
        anchor: 'Page d\'accueil',
        link: '/',
        picto: '#',
        position: 'header'
    },
    {
        id: 'aliments',
        title: 'Aliments',
        anchor: 'Aliments',
        link: '/aliment',
        picto: '#',
        position: 'header'
    },
    {
        id: 'recettes',
        title: 'Recettes',
        anchor: 'Recettes',
        link: '/recipe',
        picto: '#',
        position: 'header'
    },
    {
        id: 'repas',
        title: 'Repas',
        anchor: 'Repas',
        link: '/meal',
        picto: '#',
        position: 'header'
    },
    {
        id: 'stats',
        title: 'Statistiques',
        anchor: 'Statistiques',
        link: '/dashboard',
        picto: '#',
        position: 'header'
    },
    {
        id: 'profil',
        title: 'Profil',
        anchor: 'Profil',
        link: '#',
        picto: '#',
        position: 'header'
    },
    {
        id: 'contact',
        title: 'Contact',
        anchor: 'Contact',
        link: '#',
        picto: '#',
        position: 'footer'
    },
    {
        id: 'qui',
        title: 'Qui sommes-nous ?',
        anchor: 'Qui sommes-nous ?',
        link: '#',
        picto: '#',
        position: 'footer'
    },
    {
        id: 'lexique',
        title: 'Lexique',
        anchor: 'Lexique',
        link: '#',
        picto: '#',
        position: 'footer'
    },
];

export default NAV_ITEMS_DATA;
