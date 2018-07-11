import { GenericComponent } from './../generic/generic.component';
import { Component, OnInit } from '@angular/core';
import { AlimentService } from '../services/aliment.service';
import { CategoryService } from '../services/category.service';
import { Aliment } from '../models/business/aliment';

@Component({
  selector: 'app-aliment',
  templateUrl: './aliment.component.html',
  styleUrls: ['./aliment.component.css']
})

export class AlimentComponent extends GenericComponent implements OnInit {

constructor(private alimentService: AlimentService, private categoryService: CategoryService) {
    super();
  }

  private aliments: Aliment[];

  ngOnInit() {
    this.aliments = [];
    this.loadAliments();
    this.gererateDataTable();
  }


  public getAliments(): Aliment[] {
    return this.aliments;
  }

  private loadAliments() {
    //console.log('test');
    this.categoryService.getCategories().subscribe( (categories) => {
      //console.log('test1 : ' + categories.length);
      for ( let i = 0 ; i < categories.length ; i++) {
        //console.log('test2 : ' +  categories[i].aliments.length);
        for ( let j = 0 ; j < categories[i].aliments.length ; j++) {
          categories[i].aliments[j].category = categories[i];
          this.aliments.push(categories[i].aliments[j]);
        }
      }
    });
    //this.alimentService.getAliments().subscribe( (aliments) => { this.aliments = aliments; console.log(aliments); });
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

