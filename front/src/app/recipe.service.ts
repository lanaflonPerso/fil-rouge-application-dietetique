import { Injectable } from '@angular/core';
import { Recipe } from './models/recipe';

@Injectable({
  providedIn: 'root'
})
export class RecipeService {

  recipes: Recipe[] = [];

  constructor() {
    // tslint:disable-next-line:max-line-length
    this.recipes.push(new Recipe('1', 'Saucisse frites', 'https://eurekasante.vidal.fr/files/content/images/vidal/nutrition/saucisses_frites.jpg'));
    // tslint:disable-next-line:max-line-length
    this.recipes.push(new Recipe('2', 'Kebab Salade Tomate Oignon', 'http://static.750g.com/images/600-600/147beccae9b55ec2d9eb09e08788bffa/kebab.png'));
    this.recipes.push(new Recipe('3', 'Mac Bacon', 'https://i.ytimg.com/vi/bje8LEdJKco/maxresdefault.jpg'));
  }

  getRecipes(): Recipe[]  {
    return this.recipes;
  }

  deleteRecipe(recipe: Recipe) {
  }
}
