import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-aliments',
  templateUrl: './aliments.component.html',
  styleUrls: ['./aliments.component.css']
})
export class AlimentsComponent implements OnInit {

  tiles = [
    {text: 'Image', cols: 1, rows: 1, color: 'lightblue'},
    {text: 'Nom Aliment', cols: 1, rows: 1, color: 'lightgreen'},
    {text: 'Type Aliment', cols: 1, rows: 1, color: 'lightpink'},
    {text: 'Description', cols: 3, rows: 1, color: '#DDBDF1'},
  ];

  nutriments = [
    {text: 'Proteines en Gr', value: 100, cols: 1, rows: 1, color: 'lightblue'},
    {text: 'Glucides en Gr', value: 101,  cols: 1, rows: 1, color: 'lightgreen'},
    {text: 'Lipides en Gr', value: 102,  cols: 1, rows: 1, color: 'lightpink'},
    {text: 'Fibres en Gr', value: 103,  cols: 1, rows: 1, color: '#DDBDF1'},
    {text: 'IG en %', value: 104,  cols: 1, rows: 1, color: '#DDBDF1'},
    {text: 'CG en %', value: 105,  cols: 1, rows: 1, color: '#DDBDF1'},
    {text: 'Kcal pour 100g', value: 106,  cols: 1, rows: 1, color: '#DDBDF1'},
  ];

  constructor() { }

  ngOnInit() {
}


}
