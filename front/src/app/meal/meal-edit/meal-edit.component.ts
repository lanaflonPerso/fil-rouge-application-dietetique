import { MealService } from './../../services/meal.service';
import { Component, OnInit } from '@angular/core';
import { Meal } from '../../models/business/meal';
import { Router, ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-meal-edit',
  templateUrl: './meal-edit.component.html',
  styleUrls: ['./meal-edit.component.css']
})
export class MealEditComponent implements OnInit {

  constructor(private mealService: MealService, private route: ActivatedRoute) { }

  meal: Meal = null;

  ngOnInit() {
    this.loadMeal();
  }

  private loadMeal() {
    const id = this.route.snapshot.paramMap.get('id');
    this.mealService.getMeal(Number(id)).subscribe( (meal: Meal) => { this.meal = meal;  console.log(this.meal); });
  }

  public getMeal() {
    return this.meal;
  }

}
