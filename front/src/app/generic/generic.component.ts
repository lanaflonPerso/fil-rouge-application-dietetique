import { Component, OnInit } from '@angular/core';
import { Config } from '../models/datas/generic-datas';
import * as $ from 'jquery';
import 'datatables.net';
import 'datatables.net-bs4';

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

  protected gererateDataTable(): void {
        $(document).ready(
          function() {
            const table: any = $('.table');
            table.DataTable({
                              'searching': false,
                              'language': {
                                            'url': '//cdn.datatables.net/plug-ins/9dcbecd42ad/i18n/French.json'
                                }
                          });
      }
    );
  }

  public constructor() {
    this.config = new Config();
  }

  ngOnInit() {

  }
}
