import { Injectable } from '@angular/core';
import { Meal } from '../models/business/meal';
import LIST_MEALS from '../models/datas/meal';
import { Aliment } from '../models/business/aliment';
import { DietComponent } from '../models/business/dietComponent';


@Injectable({
  providedIn: 'root'
})
export class MealService {

  meals: Meal[] = [];
  meal: Meal = null;
  listAliments = [];

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

  public addAlimentToMeal(aliment: Aliment, qty: number) {
    console.log('A = ' + aliment.name);
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

  public delAlimentToMeal(aliment: Aliment) {

  }

public getListAliments() {
  return this.listAliments;
}

  /*
  public getMeal(iReal: string) {
    const real = this.meals.filter((elt) => elt.name.toLowerCase() === iReal.toLowerCase());
    return real[0];
  }
  */
}


