import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Injectable } from '@angular/core';
import { Meal } from '../models/business/meal';
import LIST_MEALS from '../models/datas/meal';
import { Aliment } from '../models/business/aliment';
import { DietComponent } from '../models/business/dietComponent';
import { MealComponent } from '../models/business/mealComponent';
import { Recipe } from '../models/business/recipe';
import { RecipeService } from './recipe.service';

const httpOptions = {
  headers: new HttpHeaders( {
      'Accept': 'application/json',
      'Content-Type': 'application/json'
    })
};

@Injectable({
  providedIn: 'root'
})
export class MealService {

  private restUrl = 'http://localhost:8090/meal';
  constructor(private http: HttpClient) {

  }

  public addAlimentToMeal(meal: Meal, aliment: Aliment, quantity: number): void {
    const myAliment: Aliment = new Aliment(
      aliment.id      ,
      aliment.name    ,
      aliment.visual  ,
      aliment.description , 
      aliment.proteins,
      aliment.glucids,
      aliment.lipids,
      aliment.fibers,
      aliment.ig
    );

    let indice = null;
    for ( let i = 0;  i < meal.mealComponents.length ; i++) {
      if (meal.mealComponents[i].aliment !== null) {
        if ( aliment.id === meal.mealComponents[i].aliment.id) {
          indice = i;
          break;
        }
      }
    }

    if ( indice !== null) {
      meal.mealComponents[indice].quantity += quantity;
    } else {
      meal.mealComponents.push(new MealComponent( null, quantity, myAliment, null));
    }
  }

  public addRecipeToMeal(meal: Meal, recipe: Recipe, quantity: number): void {
    const myRecipe = new Recipe( recipe.id, recipe.name, recipe.description, recipe.visual);
    let indice = null;
    for ( let i = 0;  i < meal.mealComponents.length ; i++) {
      if (meal.mealComponents[i].recipe !== null) {
        if ( recipe.id === meal.mealComponents[i].recipe.id) {
          indice = i;
          break;
        }
      }
    }

    if ( indice !== null) {
      meal.mealComponents[indice].quantity += quantity;
    } else {
      meal.mealComponents.push(new MealComponent( null, quantity, null, myRecipe));
    }
  }

  public delAlimentFromMeal(meal: Meal, aliment: Aliment) {
    let indice = null;
    for ( let i = 0;  i < meal.mealComponents.length ; i++) {
      if (meal.mealComponents[i].aliment !== null) {
        if ( aliment.id === meal.mealComponents[i].aliment.id) {
          indice = i;
          break;
        }
      }
    }

    if ( indice !== null) {
      meal.mealComponents.splice(indice, 1);
    }
  }

  public delRecipeFromMeal(meal: Meal, recipe: Recipe): void {
    let indice = null;
    for ( let i = 0;  i < meal.mealComponents.length ; i++) {
      if (meal.mealComponents[i].recipe !== null) {
        if ( recipe.id === meal.mealComponents[i].recipe.id) {
          indice = i;
          break;
        }
      }
    }

    if ( indice !== null) {
      meal.mealComponents.splice(indice, 1);
    }
  }

  public addMeal(meal: Meal): Observable<Meal> {
    console.log(meal);
    return this.http.post<Meal>(this.restUrl, meal, httpOptions);
  }

  public getMeals(): Observable<Meal[]> {
    return this.http.get<Meal[]>(this.restUrl);
  }

  public getMeal(id: number): Observable<Meal> {
    return this.http.get<Meal>(this.restUrl + '/' + id);
  }

}


