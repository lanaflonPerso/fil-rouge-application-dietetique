import { RecipeAddComponent } from '../recipe/recipe-add/recipe-add.component';
import { Aliment } from '../models/business/aliment';
import { Injectable } from '@angular/core';
import { Recipe } from '../models/business/recipe';
import { Ingredient } from '../models/business/ingredient';
import LIST_ALIMENTS from '../models/datas/aliments';


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


    const alims = LIST_ALIMENTS.aliment;
    const aliments: Aliment[] = [];
    for (let i = 0; i < alims.length ; i++) {
      const alim = alims[i];
      // tslint:disable-next-line:max-line-length
      aliments.push(new Aliment( alim.id, alim.name, alim.description, alim.visual, alim.protein, alim.glucid, alim.lipid, alim.fiber, alim.ig));
    }

    const saucisseIng = new Ingredient(1, 300, aliments[3]);
    recipe0.addIngredient(saucisseIng);
    const friteIng = new Ingredient(2, 400, aliments[4]);
    recipe0.addIngredient(friteIng);

    this.recipes.push(recipe0);
    this.recipes.push(recipe1);
    this.recipes.push(recipe2);

    this.recipe = new Recipe(null, '', '');
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
      ingredient.quantity -= quantity;
      if ( ingredient.quantity <= 0) {
        this.recipe.getIngredients().splice(this.recipe.getIngredients().indexOf(ingredient), 1);
      }
    }
  }

  addAlimentToRecipe(aliment: Aliment, quantity: number) {
    let ingredient: Ingredient = this.recipe.getIngredients().find(myIngredient => myIngredient.aliment.id === aliment.id );

    if ( ingredient == null ) {
      ingredient = new Ingredient(null, quantity, aliment);
      this.recipe.addIngredient(ingredient);
    } else {
      ingredient.quantity =  Number(ingredient.quantity) + Number(quantity);
    }
  }

  public getRecipeById(id: Number): Recipe {
    return this.getRecipes().find(recipe => recipe.id === id );
  }
}
