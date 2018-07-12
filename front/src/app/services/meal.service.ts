import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Injectable } from '@angular/core';
import { Meal } from '../models/business/meal';
import LIST_MEALS from '../models/datas/meal';
import { Aliment } from '../models/business/aliment';
import { DietComponent } from '../models/business/dietComponent';
import { MealComponent } from '../models/business/mealComponent';

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

  public addAlimentToMeal(meal: Meal, aliment: Aliment, quantity: number): Meal {
    let indice = null;
    for ( let i = 0;  i < meal.mealComponent.length ; i++) {
      if ( aliment.id === meal.mealComponent[i].aliment.id) {
        indice = i;
        break;
      }
    }

    if ( indice !== null) {
      meal.mealComponent[indice].quantity += quantity;
    } else {
      meal.mealComponent.push(new MealComponent( null, quantity, aliment, null));
    }
    return meal;
  }
/*
  public delAlimentFromMeal(meal: Meal, aliment: Aliment): void {
    let indice = null;
    for ( let i = 0;  i < meal.mealComponent.length ; i++) {
      if ( aliment.id === meal.mealComponent[i].aliment.id) {
        indice = i;
        break;
      }
    }

    if ( indice !== null) {
      delete meal.mealComponent[indice];
    }
  }*/

  public addMeal(meal: Meal): Observable<Meal> {
    return this.http.post<Meal>(this.restUrl, meal, httpOptions);
  }

  public getMeals(): Observable<Meal[]> {
    return this.http.get<Meal[]>(this.restUrl);
  }

  public getMeal(id: number): Observable<Meal> {
    return this.http.get<Meal>(this.restUrl + '/' + id);
  }

}


