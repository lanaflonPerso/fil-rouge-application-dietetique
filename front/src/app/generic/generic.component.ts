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

  public constructor() {
    this.config = new Config();
    $(document).ready( function() {
      const table: any = $('.table');
      this.dataTable = table.DataTable();
       /*const table2: any = $('#example');
      table2.DataTable( {
        'language': {
            'lengthMenu': 'Nombre de repas par page _MENU_',
            'zeroRecords': 'Aucun Résultat',
            'info': 'Page _PAGE_ sur _PAGES_',
            'infoEmpty': 'Aucun Résultat',
            'infoFiltered': '(filtered from _MAX_ total records)',
            'search':'Recherche:',
            'oPaginate': { 'sFirst':'Début','sLast':'Fin','sNext':'Suivant','sPrevious':'Précédent'}

            // remplacer tout ce qui est au dessus par ce fichier (Francais)
            //'url': '//cdn.datatables.net/plug-ins/9dcbecd42ad/i18n/French.json'
        }
    } );*/


      }
    );
  }

  ngOnInit() {
  }

}
