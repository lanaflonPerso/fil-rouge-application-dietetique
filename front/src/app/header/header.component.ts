import { GenericComponent } from './../generic/generic.component';
import { Component, OnInit } from '@angular/core';
import { NavItemsService } from '../services/nav-items.service';


@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.css']
})
export class HeaderComponent extends GenericComponent implements OnInit {

  constructor(public navItemsService: NavItemsService) {
    super();
  }

  ngOnInit() {
  }


}
