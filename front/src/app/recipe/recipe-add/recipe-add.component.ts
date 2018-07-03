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

  constructor(private recipeService: RecipeService, private alimentService: AlimentService) {
    super();
  }

  ngOnInit() {

  }

  getRecipe(): Recipe {
    return this.recipeService.getRecipe();
  }

  getFilteredAliments(): Aliment[] {
    let filteredAliments = this.alimentService.getAliments();

    if (this.getSearchText() !== '' ) {
      // tslint:disable-next-line:max-line-length
      filteredAliments = this.alimentService.getAliments().filter(aliment => aliment.name.toLocaleLowerCase().includes( this.getSearchText().toLocaleLowerCase() ));
    }

    return filteredAliments;

  }

  addAlimentToRecipe(aliment: Aliment): void {
    this.recipeService.addAlimentToRecipe(aliment, 100);
  }

  removeAlimentFromRecipe(aliment: Aliment): void {
    this.recipeService.removeAlimentFromRecipe(aliment, 100);
  }

  updateQuantity(event, ingredient: Ingredient) {
    ingredient.quantity = !isNaN(event.target.value) ? Number(event.target.value) : 0;
  }
}
