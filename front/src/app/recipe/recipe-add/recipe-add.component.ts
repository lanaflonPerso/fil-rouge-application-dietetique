import { Ingredient } from './../../models/business/ingredient';
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


  aliments: Aliment[] = [];
  filteredAliments: Aliment[] = [];

  constructor(private recipeService: RecipeService, private alimentService: AlimentService) {
    super();
  }

  ngOnInit() {

    this.aliments = this.alimentService.getAliments();
    this.filteredAliments = this.aliments;
  }

  getRecipe(): Recipe {
    return this.recipeService.getRecipe();
  }

  filterAliments(searchText): void {
    this.filteredAliments = this.aliments;

    if (this.getSearchText() !== '' ) {
      this.filteredAliments = this.aliments.filter(aliment => aliment.name.toLocaleLowerCase().includes( searchText.toLocaleLowerCase() ));
    }

  }

  addAlimentToRecipe(aliment: Aliment): void {
    this.recipeService.addAlimentToRecipe(aliment, 100);
  }

  removeAlimentFromRecipe(aliment: Aliment): void {
    this.recipeService.removeAlimentFromRecipe(aliment, 100);
  }

  updateQuantity(event, ingredient: Ingredient) {
    console.log(this.getRecipe().ingredients);
    ingredient.quantity = !isNaN(event.target.value) ? Number(event.target.value) : 0;
  }
}
