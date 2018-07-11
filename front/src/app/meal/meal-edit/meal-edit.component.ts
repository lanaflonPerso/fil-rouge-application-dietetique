import { MealService } from './../../services/meal.service';
import { Component, OnInit } from '@angular/core';
import { Meal } from '../../models/business/meal';
import { Router, ActivatedRoute } from '@angular/router';
import { RecipeService } from '../../services/recipe.service';
import { AlimentService } from '../../services/aliment.service';
import { MomentService } from '../../services/moment.service';
import Moment from '../../models/business/moment';
import { GenericComponent } from '../../generic/generic.component';
import { Aliment } from '../../models/business/aliment';

@Component({
  selector: 'app-meal-edit',
  templateUrl: './meal-edit.component.html',
  styleUrls: ['./meal-edit.component.css']
})
export class MealEditComponent extends GenericComponent implements OnInit {

  private meal: Meal = null;

  private moments: Moment[];
  private moment: Moment;

  private aliments: Aliment[];

  printListAliments: Boolean = false;
  printListRecipes: Boolean = false;

  constructor(private mealService: MealService,
    private recipeService: RecipeService,
    private alimentService: AlimentService,
    private momentService: MomentService,
    private router: Router,
    private route: ActivatedRoute
  ) {
      super();
      this.loadMoments();
}

  ngOnInit() {
    this.loadMeal();
  }

  private loadMoments() {
    this.momentService.getMoments().subscribe((moments: Moment[]) => { 
      this.moments = moments;
    } );
  }

  private loadMeal() {
    const id = this.route.snapshot.paramMap.get('id');
    this.mealService.getMeal(Number(id)).subscribe( (meal: Meal) => { this.meal = meal;  console.log(this.meal); });
  }

  public getMeal() {
    return this.meal;
  }

  public getMoments(): Moment[] {
    return this.moments;
  }

  public changeMoment(select) {
    this.momentService.getMoment(Number(select.value)).subscribe((moment: Moment) => {
       this.moment = moment;
       this.meal.moment = this.moment;
      }
    );
  }

  public checkValueAliments() {
    this.printListAliments = !this.printListAliments;
  }

  public getPrintListAliments() {
    return this.printListAliments;
  }

  public checkValueRecipes() {
    this.printListRecipes = !this.printListRecipes;
  }

  public getPrintListRecipes() {
    return this.printListRecipes;
  }

  public getAliments(): Aliment[] {
    return  this.aliments;
  }

  public getRecipes() {
    return  this.recipeService.getRecipes();
  }



}
