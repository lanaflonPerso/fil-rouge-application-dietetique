import { RecipeAddComponent } from './recipe/recipe-add/recipe-add.component';
import { Aliment } from './models/aliment';
import { Injectable } from '@angular/core';
import { Recipe } from './models/recipe';
import { Ingredient } from './models/ingredient';

@Injectable({
  providedIn: 'root'
})
export class RecipeService {

  recipes: Recipe[] = [];

  recipe: Recipe = null;

  constructor() {
    // tslint:disable-next-line:max-line-length
    const recipe0 = new Recipe(1, 'Saucisse frites', 'https://eurekasante.vidal.fr/files/content/images/vidal/nutrition/saucisses_frites.jpg');
    // tslint:disable-next-line:max-line-length
    const recipe1 = new Recipe(2, 'Kebab Salade Tomate Oignon', 'http://static.750g.com/images/600-600/147beccae9b55ec2d9eb09e08788bffa/kebab.png');
    const recipe2  = new Recipe(3, 'Mac Bacon', 'https://i.ytimg.com/vi/bje8LEdJKco/maxresdefault.jpg');

    // tslint:disable-next-line:max-line-length
    const saucisse = new Aliment(1, 'saucisse', 'https://images.marmitoncdn.org/pixcontent/bf2efd42-ffbc-4c4d-b7c7-637a1c67adcb/6d8a4455-566c-48ed-8aef-0fe77a8bb89b/manger_une_saucisse_1_398.jpg', 2, 3, 4);
    const saucisseIng = new Ingredient(1, 3, saucisse);
    recipe0.addIngredient(saucisseIng);

    const frite =  new Aliment(2, 'frite', 'http://cache.marieclaire.fr/data/photo/w850_c17/cuisine/41/fritemanioc2.jpg', 20, 30, 40);
    const friteIng = new Ingredient(2, 4, frite);
    //recipe0.addIngredient(friteIng);

    this.recipes.push(recipe0);
    this.recipes.push(recipe1);
    this.recipes.push(recipe2);

    this.recipe = recipe0;
  }

  getRecipes(): Recipe[]  {
    return this.recipes;
  }

  getRecipe(): Recipe  {
    return this.recipe;
  }

  deleteRecipe(recipe: Recipe) {

  }

  removeAlimentFromRecipe(aliment: Aliment, quantity: number) {
    const ingredient: Ingredient = this.recipe.getIngredients().find(myIngredient => myIngredient.aliment.id === aliment.id );

    if ( ingredient != null ) {
      ingredient.quantity--;
      if ( ingredient.quantity <= 0) {
        this.recipe.getIngredients().splice(this.recipe.getIngredients().indexOf(ingredient), 1);
      }
    }
  }

  addAlimentToRecipe(aliment: Aliment, quantity: number) {

    let ingredient: Ingredient = this.recipe.getIngredients().find(myIngredient => myIngredient.aliment.id === aliment.id );

    if ( ingredient == null ) {
      ingredient = new Ingredient(null, 1, aliment);
      this.recipe.addIngredient(ingredient);
    } else {
      ingredient.quantity++;
    }
  }
}
