import { RecipeService } from '../services/recipe.service';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-recipe',
  templateUrl: './recipe.component.html',
  styleUrls: ['./recipe.component.css']
})
export class RecipeComponent implements OnInit {

  private searchText = '';

  constructor(private recipeService: RecipeService) { }

  ngOnInit() {
  }

  public getRecipes() {
    return  this.recipeService.getRecipes();
  }

  public getFileteredRecipes() {
    if (this.searchText !== '' ) {
      return this.recipeService.getRecipes()
      .filter(recipe => recipe.name.toLocaleLowerCase().includes( this.searchText.toLocaleLowerCase() ));
    } else {
      return this.getRecipes();
    }
  }

  public filter(searchText: string) {
    this.searchText = searchText;
  }


}
