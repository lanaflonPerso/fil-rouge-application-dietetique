import { GenericComponent } from './../generic/generic.component';
import { Component, OnInit } from '@angular/core';
import { AlimentService } from '../services/aliment.service';
import { CategoryService } from '../services/category.service';
import { Aliment } from '../models/business/aliment';
import { TouchSequence } from '../../../node_modules/@types/selenium-webdriver';
import { Router } from '../../../node_modules/@angular/router';

@Component({
  selector: 'app-aliment',
  templateUrl: './aliment.component.html',
  styleUrls: ['./aliment.component.css']
})

export class AlimentComponent extends GenericComponent implements OnInit {

constructor(private alimentService: AlimentService, private categoryService: CategoryService, private router: Router) {
    super();
  }

  public aliments: Aliment[];

  ngOnInit() {
    this.aliments = [];
    this.loadAliments();
    this.gererateDataTable();
  }


  public getAliments(): Aliment[] {
    return this.aliments;
  }

  private loadAliments() {

    this.alimentService.getAliments().subscribe( (aliments) => { this.aliments = aliments; } );
    /*this.categoryService.getCategories().subscribe( (categories) => {
      for ( let i = 0 ; i < categories.length ; i++) {
        for ( let j = 0 ; j < categories[i].aliments.length ; j++) {
          categories[i].aliments[j].category = categories[i];
          this.aliments.push(categories[i].aliments[j]);
        }

      }

      console.log(this.aliments);

    });*/
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

  public deleteAliment(id: number) {
    this.alimentService.deleteAliment(id).subscribe( () => { this.loadAliments(); });
  }
}

