import { NavItem } from './nav-item';

const NAV_ITEMS_DATA: NavItem[] =
[
    {
        id: 'home',
        title: 'Page d\'accueil',
        anchor: 'Page d\'accueil',
        link: '/',
        picto: 'home',
        position: 'header'
    },
    {
        id: 'aliments',
        title: 'Aliments',
        anchor: 'Aliments',
        link: '/aliment',
        picto: 'spa',
        position: 'header'
    },
    {
        id: 'recettes',
        title: 'Recettes',
        anchor: 'Recettes',
        link: '/recipe',
        picto: 'view_list',
        position: 'header'
    },
    {
        id: 'repas',
        title: 'Repas',
        anchor: 'Repas',
        link: '/meal',
        picto: 'restaurant',
        position: 'header'
    },
    {
        id: 'moment',
        title: 'Moment',
        anchor: 'Moment',
        link: '/moment',
        picto: 'query_builder',
        position: 'header'
    },
    {
        id: 'category',
        title: 'Catégories',
        anchor: 'Categories',
        link: '/aliment/category',
        picto: 'folder',
        position: 'header'
    },
    {
        id: 'stats',
        title: 'Statistiques',
        anchor: 'Statistiques',
        link: '/dashboard',
        picto: 'trending_down',
        position: 'header'
    },
    {
        id: 'profil',
        title: 'Profil',
        anchor: 'Profil',
        link: '#',
        picto: 'person',
        position: 'header'
    },
    {
        id: 'contact',
        title: 'Contact',
        anchor: 'Contact',
        link: '#',
        picto: '',
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
