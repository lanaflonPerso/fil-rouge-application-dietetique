
import { Component, OnInit } from '@angular/core';
import { GenericComponent } from './../../generic/generic.component';
import { MealService } from '../../services/meal.service';
import { RecipeService } from '../../services/recipe.service';
import { AlimentService } from '../../services/aliment.service';
import { MomentService } from '../../services/moment.service';
import { Aliment } from '../../models/business/aliment';
import { Moment } from '../../models/business/moment';
import { Meal } from '../../models/business/meal';
import { MealComponent } from '../../models/business/mealComponent';
import { Router } from '@angular/router';
import { Recipe } from '../../models/business/recipe';

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

  // private mealComponent: MealComponent[] = [];

  private aliments: Aliment[];
  private recipes: Recipe[];

  constructor(private mealService: MealService,
              private recipeService: RecipeService,
              private alimentService: AlimentService,
              private momentService: MomentService,
              private router: Router,
            ) {
    super();
  }

  ngOnInit() {
    this.loadMoments();
    this.loadAliments();
    this.loadRecipes();
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

  public getRecipes(): Recipe[] {
    return  this.recipes;
  }

  public addAlimentToMeal(aliment: Aliment): void {
   this.meal = this.mealService.addAlimentToMeal(this.meal, aliment, 100);
   // console.log(this.meal);
   this.getCg();
  }

  public addRecipeToMeal(recipe: Recipe): void {
    this.meal = this.mealService.addRecipeToMeal(this.meal, recipe, 1);
    console.log(this.meal);
    this.getCg();
  }

  // https://www.w3schools.com/jsref/jsref_filter.asp
  public getMealAliments(): MealComponent[] {
    return this.meal.mealComponents.filter(this.checkIfIsAliment);
  }

  public checkIfIsAliment(mealComponent) {
    // console.log('A = ' + mealComponent.aliment.name);
    return mealComponent.aliment != null;
  }

  public getMealRecipes(): MealComponent[] {
    return this.meal.mealComponents.filter(this.checkIfIsRecipe);
  }

  public checkIfIsRecipe(mealComponent) {
    // console.log('A = ' + mealComponent.recipe.name);
    return mealComponent.recipe != null;
  }

  public loadAliments() {
    return this.alimentService.getAliments().subscribe( (aliments) => { this.aliments = aliments; } );
  }

  public loadRecipes() {
    // return this.recipeService.getRecipes().subscribe( (recipes) => { this.recipes = recipes; } );
    this.recipeService.getRecipes().subscribe( (recipes) => {
                                                              this.recipes = recipes;
                                                              console.log(this.recipes[0].ingredients);
                                                            }
                                              );

    return null;
  }
/*
  public getCgAliments(): Number {
    let cg: Number = 0;
    if ( this.meal.mealComponents.length > 0) {
       for ( let i = 0 ; i < this.meal.mealComponents.length ; i++ ) {
          if (this.meal.mealComponents[i].aliment != null) {
            cg = Number(cg) + ( this.meal.mealComponents[i].aliment.ig *  this.meal.mealComponents[i].quantity )  / 100;
          }
       }
    }
    return Number.parseFloat(Number(cg).toFixed(2));
  }

  public getCgRecipes(): Number {
    return 0;
  }
*/
  public getCg(): Number {
    // return Number(this.getCgAliments()) + Number(this.getCgRecipes());
    return this.meal.getCg();
  }

  public delAlimentFromMeal(aliment: Aliment): void {
    this.mealService.delAlimentFromMeal(this.meal, aliment);
   }

   public delRecipeFromMeal(recipe: Recipe): void {
    this.mealService.delRecipeFromMeal(this.meal, recipe);
   }

}
