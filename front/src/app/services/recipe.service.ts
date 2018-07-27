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
  /**
   * Url to access to the WebService
   */
  private restUrl = 'http://localhost:8090/recipe';

  constructor(private http: HttpClient) {
  }
/**
 * Call a WS to get a recipe
 *
 * @param {number} id id of the recipe to get
 * @returns Observable<Recipe>
 */
  public getRecipe(id: Number): Observable<Recipe> {
    return this.http.get<Recipe>(this.restUrl + '/'  + id).pipe(
      map< Recipe, any>(
        (recipe: Recipe) => this.makeRecipeWithIngredientsAndAliment(recipe)
      )
    );
  }
/**
 * Call a WS to add a recipe
 *
 * @param {Recipe} recipe Params of recipe to add
 * @returns Observable<Recipe>
 */
  public addRecipe(recipe: Recipe): Observable<Recipe> {
    console.log(recipe);
    return this.http.post<Recipe>(this.restUrl, recipe, httpOptions);
  }
/**
 * Call a WS to update a recipe
 *
 * @param {Recipe} recipe Params of recipe to update
 * @returns Observable<Recipe>
 */
  public updateRecipe(recipe: Recipe): Observable<Recipe> {
    return this.http.put<Recipe>(this.restUrl, recipe, httpOptions);
  }

/**
 * Create a recipe with their ingredients
 *
 * @param {Recipe} recipe Params of recipe to upgrade
 * @returns Recipe
 */
  public makeRecipeWithIngredientsAndAliment(recipe): Recipe  {
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

/**
 * Get list of recipes
 *
 * @returns Observable<Recipe[]>
 */
  public getRecipes(): Observable<Recipe[]> {

    return this.http.get<Recipe[]>(this.restUrl).pipe<Recipe[]>(
      map< Recipe[], any>( (recipes: Recipe[]) => {
        return recipes.map(
            (recipe) => this.makeRecipeWithIngredientsAndAliment(recipe));
          }
        )
      );
  }

  /**
   * Add or increase an aliment to a recipe
   *
   * @param {Recipe} recipe
   * @param {Aliment} aliment
   * @param {number} quantity
   * @returns void
   */
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

  /**
   * Remove or decrease an aliment from a recipe
   *
   * @param {Recipe} recipe
   * @param {Aliment} aliment
   * @param {number} quantity
   * @returns void
   */
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
