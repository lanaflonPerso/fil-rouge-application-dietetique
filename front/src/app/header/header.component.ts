import { Component, OnInit } from '@angular/core';
import { NavItemsService } from '../services/nav-items.service';


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
