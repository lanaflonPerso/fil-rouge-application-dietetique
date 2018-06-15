import { GenericComponent } from './../../generic/generic.component';
import { AlimentService } from '../../services/aliment.service';
import { Component, OnInit } from '@angular/core';
import { Recipe } from '../../models/business/recipe';
import { RecipeService } from '../../services/recipe.service';
import { Aliment } from '../../models/business/aliment';

@Component({
  selector: 'app-recipe-add',
  templateUrl: './recipe-add.component.html',
  styleUrls: ['./recipe-add.component.css']
})
export class RecipeAddComponent extends GenericComponent implements OnInit {

  recipe: Recipe;

  aliments: Aliment[] = [];
  filteredAliments: Aliment[] = [];

  constructor(private recipeService: RecipeService, private alimentService: AlimentService) {
    super();
  }

  ngOnInit() {
    this.recipe = this.recipeService.getRecipe();
    this.aliments = this.alimentService.getAliments();
    this.filteredAliments = this.aliments;
  }

  getRecipe(): Recipe {
    return this.recipeService.getRecipe();
  }

  filterAliments(searchText) {
    this.filteredAliments = this.aliments;
    if (searchText !== '' ) {
      this.filteredAliments = this.aliments.filter(aliment => aliment.name.toLocaleLowerCase().includes( searchText.toLocaleLowerCase() ));
    }
  }

  


  addAlimentToRecipe(aliment: Aliment) {
    this.recipeService.addAlimentToRecipe(aliment, 1);
  }

  removeAlimentFromRecipe(aliment: Aliment) {
    this.recipeService.removeAlimentFromRecipe(aliment, 1);
  }
}
