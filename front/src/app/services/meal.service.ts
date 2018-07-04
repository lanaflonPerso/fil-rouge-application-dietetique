import { Injectable } from '@angular/core';
import { Meal } from '../models/business/meal';
import LIST_MEALS from '../models/datas/meal';


@Injectable({
  providedIn: 'root'
})
export class MealService {

  meals: Meal[] = [];
  meal: Meal = null;

  constructor() {
    const meals = LIST_MEALS.meals;

    for (let i = 0; i < meals.length ; i++) {
      const m = meals[i];
      const meal = new Meal( m.id, m.date, m.name, m.moment, m.kcal);
      this.meals.push(meal);
    }
   }

   public getMeals() {
    return this.meals;
  }

  /*
  public getMeal(iReal: string) {
    const real = this.meals.filter((elt) => elt.name.toLowerCase() === iReal.toLowerCase());
    return real[0];
  }
  */
}


