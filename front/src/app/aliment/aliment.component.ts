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

  ngOnInit() {
    this.gererateDataTable();
  }

  public getAliments(): Aliment[] {
    return  this.alimentService.getAliments();
  }

  public getFileteredAliments(): Aliment[] {
    if (this.getSearchText() !== '' ) {
      return this.alimentService.getAliments()
      .filter(aliment => aliment.name.toLocaleLowerCase().includes( this.getSearchText().toLocaleLowerCase() ));
    } else {
      return this.getAliments();
    }
  }
}
