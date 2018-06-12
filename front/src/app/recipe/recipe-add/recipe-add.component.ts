import { AlimentService } from './../../aliment.service';
import { Component, OnInit } from '@angular/core';
import { Recipe } from '../../models/recipe';
import { RecipeService } from '../../recipe.service';
import { Aliment } from '../../models/aliment';

@Component({
  selector: 'app-recipe-add',
  templateUrl: './recipe-add.component.html',
  styleUrls: ['./recipe-add.component.css']
})
export class RecipeAddComponent implements OnInit {

  recipe: Recipe;

  aliments: Aliment[] = [];
  filteredAliments: Aliment[] = [];

  constructor(private recipeService: RecipeService, private alimentService: AlimentService) {
   this.recipe = this.recipeService.getRecipes()[0];
   this.aliments = this.alimentService.getAliments();
   this.filteredAliments = this.aliments;
  }

  ngOnInit() {
  }

  getRecipe() {
    return this.recipe;
  }

  filterAliments(searchText) {
    this.filteredAliments = this.aliments;
    if (searchText !== '' ) {
      this.filteredAliments = this.aliments.filter(aliment => aliment.name.toLocaleLowerCase().includes( searchText.toLocaleLowerCase() ));
    }
  }

}
