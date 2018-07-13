import { Category } from './../models/business/category';
import { Recipe } from './../models/business/recipe';
import { map } from 'rxjs/operators';
import { Ingredient } from './../models/business/ingredient';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Aliment } from '../models/business/aliment';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';

const httpOptions = {
  headers: new HttpHeaders({
    'Accept': 'application/json',
    'Content-Type': 'application/json'
  })
};

@Injectable({
  providedIn: 'root'
})
export class RecipeService {

  private restUrl = 'http://localhost:8090/recipe';

  constructor(private http: HttpClient) {
  }

  public getRecipe(id: Number): Observable<Recipe> {
    return this.http.get<Recipe>(this.restUrl + '/'  + id).pipe(
      map< Recipe, any>(
        (recipe: Recipe) => this.makeRecipeWithIngredientsAndAliment(recipe)
      )
    );
  }

  public addRecipe(recipe: Recipe): Observable<Recipe> {
    console.log(recipe);
    return this.http.post<Recipe>(this.restUrl, recipe, httpOptions);
  }

  public updateRecipe(recipe: Recipe): Observable<Recipe> {
<<<<<<< HEAD
=======
    console.log(recipe);
>>>>>>> afcdab3b1f7cd2c196caefd70e4391e38950d372
    return this.http.put<Recipe>(this.restUrl, recipe, httpOptions);
  }

  public makeRecipeWithIngredientsAndAliment(recipe): Recipe  {
<<<<<<< HEAD
=======

>>>>>>> afcdab3b1f7cd2c196caefd70e4391e38950d372
    const myRecipe: Recipe = new Recipe(recipe.id, recipe.name, recipe.visual, recipe.description);
      for ( let i = 0 ; i < recipe.ingredients.length ; i++ ) {
        const ingredient = recipe.ingredients[i];
        const myAliment = ingredient.aliment;
        const aliment: Aliment = new Aliment(
          myAliment.id  ,
          myAliment.name  ,
          myAliment.description ,
          myAliment.visual  ,
          myAliment.proteins,
          myAliment.glucids ,
          myAliment.lipids  ,
          myAliment.fibers  ,
          myAliment.ig
        );

        const myIngredient: Ingredient = new Ingredient(ingredient.id, ingredient.quantity, aliment);
        myRecipe.addIngredient(myIngredient);
    }
    return myRecipe;
  }

  public getRecipes(): Observable<Recipe[]> {

    return this.http.get<Recipe[]>(this.restUrl).pipe<Recipe[]>(
      map< Recipe[], any>( (recipes: Recipe[]) => {
        return recipes.map(
            (recipe) => this.makeRecipeWithIngredientsAndAliment(recipe));
          }
        )
      );
  }

 public addAlimentToRecipe(recipe: Recipe, aliment: Aliment, quantity: number) {

    let indice = null;
    for ( let i = 0;  i < recipe.ingredients.length ; i++) {
      if ( aliment.id === recipe.ingredients[i].aliment.id) {
        indice = i;
        break;
      }
    }

    if ( indice !== null) {
      recipe.ingredients[indice].quantity += quantity;
    } else {
      recipe.ingredients.push(new Ingredient( null, quantity, aliment));
    }

  }

  removeAlimentFromRecipe(recipe: Recipe, aliment: Aliment, quantity: number) {
    const ingredient: Ingredient = recipe.getIngredients().find(myIngredient => myIngredient.aliment.id === aliment.id);

    if (ingredient != null) {
      ingredient.quantity -= quantity;
      if (ingredient.quantity <= 0) {
        recipe.getIngredients().splice(recipe.getIngredients().indexOf(ingredient), 1);
      }
    }
  }
}
