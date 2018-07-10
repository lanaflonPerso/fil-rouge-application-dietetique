import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Injectable } from '@angular/core';
import { Meal } from '../models/business/meal';
import LIST_MEALS from '../models/datas/meal';
import { Aliment } from '../models/business/aliment';
import { DietComponent } from '../models/business/dietComponent';

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

  meals: Meal[] = [];
  meal: Meal = null;
  listAliments = [];

  constructor(private http: HttpClient) {
    const meals = LIST_MEALS.meals;

    for (let i = 0; i < meals.length ; i++) {
      const m = meals[i];
      const meal = new Meal( m.id, m.date, m.name, null);
      this.meals.push(meal);
    }
   }

  public addAlimentToMeal(aliment: Aliment, qty: number) {
    this.listAliments.push(new Aliment( aliment.id,
                                        aliment.name,
                                        aliment.description,
                                        aliment.visual,
                                        aliment.proteins,
                                        aliment.glucids,
                                        aliment.lipids,
                                        aliment.fibers,
                                        aliment.ig
                                      )
                                    );

  }

  public getListAliments() {
    return this.listAliments;
  }

  public addMeal(meal: Meal): Observable<Meal> {
    return this.http.post<Meal>(this.restUrl, meal, httpOptions);
  }

  public getMeals(): Observable<Meal[]> {
    return this.http.get<Meal[]>(this.restUrl);
  }
}


