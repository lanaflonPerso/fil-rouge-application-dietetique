import { Component, OnInit } from '@angular/core';
import { GenericComponent } from './../generic/generic.component';
import { MealService } from '../services/meal.service';
import { MomentService } from '../services/moment.service';
import Moment from '../models/business/moment';
import { Meal } from '../models/business/meal';

@Component({
  selector: 'app-meal',
  templateUrl: './meal.component.html',
  styleUrls: ['./meal.component.css']
})
export class MealComponent  extends GenericComponent  implements OnInit {

  private moments: Moment[];

  private meals: Meal[];

  constructor(private mealService: MealService, private momentService: MomentService) {
    super();
    this.loadMeals();
    this.loadMoments();
  }

  ngOnInit() {
    this.gererateDataTable();
  }

  private loadMoments() {
    this.momentService.getMoments().subscribe((moments: Moment[]) => { this.moments = moments; } );
  }

  private loadMeals() {
      this.mealService.getMeals().subscribe( (meals: Meal[]) => { this.meals = meals; console.log(meals); });
  }

  public getMeals(): Meal[] {
   return this.meals;
  }

  public getMoments(): Moment[] {
    return this.moments;
  }
}
