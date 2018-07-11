import { GenericComponent } from './../generic/generic.component';
import { RecipeService } from '../services/recipe.service';
import { Component, OnInit } from '@angular/core';
import { Recipe } from '../models/business/recipe';

@Component({
  selector: 'app-recipe',
  templateUrl: './recipe.component.html',
  styleUrls: ['./recipe.component.css']
})
export class RecipeComponent extends GenericComponent implements OnInit {

  recipes: Recipe[];

  constructor(private recipeService: RecipeService) {
    super();
  }

  ngOnInit() {
    this.loadRecipes();
    this.gererateDataTable();
  }

  public loadRecipes() {
    this.recipeService.getRecipes().subscribe( (recipes: Recipe[]) => { this.recipes = recipes; } );
  }

  public getRecipes() {
    return this.recipes;
  }

  public getFileteredRecipes() {
    if (this.getSearchText() !== '' ) {
      return this.getRecipes()
      .filter(recipe => recipe.name.toLocaleLowerCase().includes( this.getSearchText().toLocaleLowerCase() ));
    } else {
      return this.getRecipes();
    }

  }
}
