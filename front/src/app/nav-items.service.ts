import { Injectable } from '@angular/core';
import { NavItems } from './nav-items';
import NAV_ITEMS_DATA from './nav-items-data';

@Injectable({
  providedIn: 'root'
})
export class NavItemsService {

  listNavItems: NavItems[] = NAV_ITEMS_DATA;

  constructor() {
    console.log('coucou');
  }
}
