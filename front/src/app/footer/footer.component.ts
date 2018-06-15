import { GenericComponent } from './../generic/generic.component';
import { Component, OnInit } from '@angular/core';
import { NavItemsService } from '../services/nav-items.service';

@Component({
  selector: 'app-footer',
  templateUrl: './footer.component.html',
  styleUrls: ['./footer.component.css']
})
export class FooterComponent extends GenericComponent implements OnInit {

  constructor(public navItemsService: NavItemsService) {
    super();
  }

  ngOnInit() {
  }

}
