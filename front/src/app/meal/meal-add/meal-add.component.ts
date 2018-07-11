
import { Component, OnInit } from '@angular/core';
import { GenericComponent } from './../../generic/generic.component';
import { MealService } from '../../services/meal.service';
import { RecipeService } from '../../services/recipe.service';
import { AlimentService } from '../../services/aliment.service';
import { MomentService } from '../../services/moment.service';
import { Aliment } from '../../models/business/aliment';
import { Moment } from '../../models/business/moment';
import { Meal } from '../../models/business/meal';
import { Router } from '@angular/router';

@Component({
  selector: 'app-meal-add',
  templateUrl: './meal-add.component.html',
  styleUrls: ['./meal-add.component.css']
})
export class MealAddComponent extends GenericComponent implements OnInit {

  printListAliments: Boolean = false;
  printListRecipes: Boolean = false;

  moments: Moment[];
  moment: Moment;

  private meal: Meal;

  private aliments: Aliment[];

  constructor(private mealService: MealService,
              private recipeService: RecipeService,
              private alimentService: AlimentService,
              private momentService: MomentService,
              private router: Router
            ) {
    super();
  }

  ngOnInit() {
    this.loadMoments();
    this.loadAliments();
    this.meal = new Meal(null, '', '', null);
  }

  private loadMoments() {
    this.momentService.getMoments().subscribe((moments: Moment[]) => {
      this.moments = moments;
    } );
  }

  public getMoments(): Moment[] {
    return this.moments;
  }

  public getMeal() {
    return this.meal;
  }

  public addMeal() {
    this.mealService.addMeal(this.meal).subscribe(() => {
      this.router.navigateByUrl('/meal');
    });
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

  public addAlimentToMeal(aliment: Aliment): void {
    this.mealService.addAlimentToMeal(this.meal, aliment, 100);
  }

  public loadAliments() {
    return this.alimentService.getAliments().subscribe( (aliments) => { this.aliments = aliments; } );
  }
}
