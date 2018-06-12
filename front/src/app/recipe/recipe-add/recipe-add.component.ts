import { Component, OnInit } from '@angular/core';
import { Recipe } from '../../models/recipe';

@Component({
  selector: 'app-recipe-add',
  templateUrl: './recipe-add.component.html',
  styleUrls: ['./recipe-add.component.css']
})
export class RecipeAddComponent implements OnInit {

  recipe: Recipe;

  constructor() {
    // tslint:disable-next-line:max-line-length
    this.recipe = new Recipe(1, 'sauce poivre', 'https://www.academiedugout.fr/images/41981/948-580/9151-sauce-au-poivre.jpg?poix=50&poiy=50');
  }

  ngOnInit() {
  }

  getRecipe() {
    return this.recipe;
  }

  getComposition() {
    // tslint:disable-next-line:max-line-length

  }

}
