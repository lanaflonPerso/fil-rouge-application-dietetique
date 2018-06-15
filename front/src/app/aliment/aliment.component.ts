import { Component, OnInit } from '@angular/core';
import { AlimentService } from '../services/aliment.service';
import { Aliment } from '../models/business/aliment';

@Component({
  selector: 'app-aliment',
  templateUrl: './aliment.component.html',
  styleUrls: ['./aliment.component.css']
})
export class AlimentComponent implements OnInit {

  private searchText = '';

  constructor(private alimentService: AlimentService) { }

  ngOnInit() {
  }

  public getAliments() {
    return  this.alimentService.getAliments();
  }

  public getFileteredAliments() {
    if (this.searchText !== '' ) {
      return this.alimentService.getAliments()
      .filter(aliment => aliment.name.toLocaleLowerCase().includes( this.searchText.toLocaleLowerCase() ));
    } else {
      return this.getAliments();
    }
  }

  public filter(searchText: string) {
    this.searchText = searchText;
  }
}
