import { Aliment } from './models/aliment';
import { Injectable } from '@angular/core';
import { Recipe } from './models/recipe';

@Injectable({
  providedIn: 'root'
})
export class RecipeService {

  recipes: Recipe[] = [];

  constructor() {
    // tslint:disable-next-line:max-line-length
    const recipe0 = new Recipe('1', 'Saucisse frites', 'https://eurekasante.vidal.fr/files/content/images/vidal/nutrition/saucisses_frites.jpg');
    // tslint:disable-next-line:max-line-length
    const recipe1 = new Recipe('2', 'Kebab Salade Tomate Oignon', 'http://static.750g.com/images/600-600/147beccae9b55ec2d9eb09e08788bffa/kebab.png');
    const recipe2  = new Recipe('3', 'Mac Bacon', 'https://i.ytimg.com/vi/bje8LEdJKco/maxresdefault.jpg');

    // tslint:disable-next-line:max-line-length
    const saucisse = new Aliment('1', 'saucisse', 'https://images.marmitoncdn.org/pixcontent/bf2efd42-ffbc-4c4d-b7c7-637a1c67adcb/6d8a4455-566c-48ed-8aef-0fe77a8bb89b/manger_une_saucisse_1_398.jpg', 2, 3, 4);
    recipe0.addAliments(saucisse);
    const frite =  new Aliment('2', 'frite', 'http://cache.marieclaire.fr/data/photo/w850_c17/cuisine/41/fritemanioc2.jpg', 20, 30, 40);
    recipe0.addAliments(frite);

    this.recipes.push(recipe1);
    this.recipes.push(recipe2);
  }

  getRecipes(): Recipe[]  {
    return this.recipes;
  }

  deleteRecipe(recipe: Recipe) {
  }
}
