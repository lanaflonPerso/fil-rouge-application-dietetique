import { CategoryService } from './../../services/category.service';
import { AlimentService } from './../../services/aliment.service';
import { Component, OnInit } from '@angular/core';
import { Aliment } from '../../models/business/aliment';
import { Router } from '@angular/router';
import { Category } from '../../models/business/category';

@Component({
  selector: 'app-aliment-add',
  templateUrl: './aliment-add.component.html',
  styleUrls: ['./aliment-add.component.css']
})
export class AlimentAddComponent implements OnInit {

  private aliment: Aliment;

  private categorie: Category;

  private categories: Category[];

  constructor(private alimentService: AlimentService, private categoryService: CategoryService, private router: Router) {

  }

  ngOnInit() {
    this.aliment = new Aliment(null, '', '', '' , 0, 0, 0, 0, 0);
    
  }

  public getAliment(): Aliment {
    return this.aliment;
  }

  public addAliment() {

    this.alimentService.addAliment(this.aliment);
    this.router.navigateByUrl('/aliment');
  }

  public getCategories() {
    return  this.categoryService.getCategories();
  }

  public changeCat(select) {
    this.categorie = this.categoryService.getCategorie(Number(select.value));
    this.aliment.setCategory(this.categorie);
    
  }

}
