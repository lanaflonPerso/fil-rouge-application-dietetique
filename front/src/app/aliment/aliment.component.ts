import { GenericComponent } from './../generic/generic.component';
import { Component, OnInit } from '@angular/core';
import { AlimentService } from '../services/aliment.service';
import { Aliment } from '../models/business/aliment';

@Component({
  selector: 'app-aliment',
  templateUrl: './aliment.component.html',
  styleUrls: ['./aliment.component.css']
})

export class AlimentComponent extends GenericComponent implements OnInit {

constructor(private alimentService: AlimentService) {
    super();
  }

  private aliments: Aliment[];

  ngOnInit() {
    this.loadAliments();
    this.gererateDataTable();
  }


  public getAliments(): Aliment[] {
    return this.aliments;
  }

  private loadAliments() {
    this.alimentService.getAliments().subscribe( (aliments) => { this.aliments = aliments; console.log(aliments); });
  }

  public getFileteredAliments(): Aliment[] {
    if (this.getSearchText() !== '' ) {
      return this.aliments
      .filter(aliment => aliment.name.toLocaleLowerCase().includes( this.getSearchText().toLocaleLowerCase() ));
    } else {
      return this.aliments;
    }
  }
}

