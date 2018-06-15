import { Component, OnInit } from '@angular/core';
import { Config } from '../models/datas/generic-datas';

@Component({
  selector: 'app-generic',
  templateUrl: './generic.component.html',
  styleUrls: ['./generic.component.css']
})
export class GenericComponent implements OnInit {

  config: Config;

  public constructor() {
    this.config = new Config();
  }

  ngOnInit() {

  }

}
