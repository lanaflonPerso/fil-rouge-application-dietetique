import { GenericComponent } from './../generic/generic.component';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent extends GenericComponent implements OnInit {

  public constructor() {
    super();
  }

  ngOnInit() {

  }

}
