import { Component, OnInit } from '@angular/core';
import { GenericComponent } from './../../generic/generic.component';
import { MealService } from '../../services/meal.service';
import { RecipeService } from '../../services/recipe.service';
import { AlimentService } from '../../services/aliment.service';
import { Aliment } from '../../models/business/aliment';

@Component({
  selector: 'app-meal-add',
  templateUrl: './meal-add.component.html',
  styleUrls: ['./meal-add.component.css']
})
export class MealAddComponent extends GenericComponent implements OnInit {

  printListAliments: Boolean = false;
  printListRecipes: Boolean = false;

  constructor(private mealService: MealService,
              private recipeService: RecipeService,
              private alimentService: AlimentService
            ) {
    super();
  }

  ngOnInit() {
  }

  public getMeals() {
    return  this.mealService.getMeals();
  }

  public checkValueAliments() {
    this.printListAliments = !this.printListAliments;
    console.log('Aliment : ' + this.printListAliments );
  }

  public getPrintListAliments() {
    return this.printListAliments;
  }

  public checkValueRecipes() {
    this.printListRecipes = !this.printListRecipes;
    console.log('Recette : ' + this.printListRecipes );
  }

  public getPrintListRecipes() {
    return this.printListRecipes;
  }

  public getAliments(): Aliment[] {
    return  this.alimentService.getAliments();
  }

  public getRecipes() {
    return  this.recipeService.getRecipes();
  }

}
