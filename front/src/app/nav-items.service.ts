import { Injectable } from '@angular/core';
import { NavItem } from './nav-items';
import NAV_ITEMS_DATA from './nav-items-data';

@Injectable({
  providedIn: 'root'
})
export class NavItemsService {

  listNavItems: NavItem[] = NAV_ITEMS_DATA;
  selectedNavItem: NavItem = NAV_ITEMS_DATA[0];

  constructor() {
  }

  // retourne la liste des items de navigation correspondant à la position passée en paramètre
  getListNavItems(position): NavItem[] {
    return this.listNavItems.filter( item => item.position === position );
  }

  selectNavItem(id) {
    this.selectedNavItem = id;
  }

}
