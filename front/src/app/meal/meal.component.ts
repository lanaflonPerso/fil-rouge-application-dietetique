import { Component, OnInit } from '@angular/core';
import { GenericComponent } from './../generic/generic.component';
import { MealService } from '../services/meal.service';

@Component({
  selector: 'app-meal',
  templateUrl: './meal.component.html',
  styleUrls: ['./meal.component.css']
})
export class MealComponent  extends GenericComponent  implements OnInit {

  constructor(private mealService: MealService) {
    super();
  }

  ngOnInit() {
  }

  public getMeals() {
    return  this.mealService.getMeals();
  }
}
