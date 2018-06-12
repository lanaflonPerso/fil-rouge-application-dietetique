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


}
