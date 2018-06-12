import { Component, OnInit } from '@angular/core';
import { NavItemsService } from '../nav-items.service';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.css']
})
export class HeaderComponent implements OnInit {

  constructor(public navItemsService: NavItemsService) { }

  ngOnInit() {
  }

}
