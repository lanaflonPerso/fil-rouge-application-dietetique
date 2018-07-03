import { Component, OnInit } from '@angular/core';
import { Config } from '../models/datas/generic-datas';

@Component({
  selector: 'app-generic',
  templateUrl: './generic.component.html',
  styleUrls: ['./generic.component.css']
})
export class GenericComponent implements OnInit {

  config: Config;

  private searchText: String = '';

  public setSearchText(searchText: String) {
    this.searchText = searchText;
  }

  public getSearchText() {
    return this.searchText;
  }

  public filter(searchText: string): void {
    this.setSearchText(searchText);
  }

  public constructor() {
    this.config = new Config();
  }

  ngOnInit() {

  }

}
