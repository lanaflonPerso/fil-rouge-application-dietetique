import { RecipeService } from './../recipe.service';
import { Component, OnInit } from '@angular/core';
import { Recipe } from '../models/recipe';

@Component({
  selector: 'app-recipe',
  templateUrl: './recipe.component.html',
  styleUrls: ['./recipe.component.css']
})
export class RecipeComponent implements OnInit {

  recipes: Recipe[];

  filteredRecipes: Recipe[];

  constructor(public recipeService: RecipeService) {

  }

  ngOnInit() {
    this.recipes = this.recipeService.getRecipes();
    this.filteredRecipes = this.recipes;
  }

  filter(searchText: string) {
    this.filteredRecipes = this.recipes;
    if (searchText !== '' ) {
      this.filteredRecipes = this.recipes.filter(recipe => recipe.name.toLocaleLowerCase().includes( searchText.toLocaleLowerCase() ));
    }
  }

}
