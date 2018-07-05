import { GenericComponent } from './../generic/generic.component';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-display',
  templateUrl: './display.component.html',
  styleUrls: ['./display.component.css']
})
export class DisplayComponent extends GenericComponent implements OnInit {

  constructor() {
    super();
  }

  ngOnInit() {

  }

}
