import { GenericComponent } from './../generic/generic.component';
import { RecipeService } from '../services/recipe.service';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-recipe',
  templateUrl: './recipe.component.html',
  styleUrls: ['./recipe.component.css']
})
export class RecipeComponent extends GenericComponent implements OnInit {


  constructor(private recipeService: RecipeService) {
    super();
  }

  ngOnInit() {

  }

  public getRecipes() {
    return  this.recipeService.getRecipes();
  }

  public getFileteredRecipes() {
    if (this.getSearchText() !== '' ) {
      return this.recipeService.getRecipes()
      .filter(recipe => recipe.name.toLocaleLowerCase().includes( this.getSearchText().toLocaleLowerCase() ));
    } else {
      return this.getRecipes();
    }

  }
}
