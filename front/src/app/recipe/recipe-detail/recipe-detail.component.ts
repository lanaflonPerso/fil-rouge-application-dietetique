import { Component, OnInit } from '@angular/core';
import { RecipeService } from '../../services/recipe.service';
import { Recipe } from '../../models/business/recipe';
import { ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-recipe-detail',
  templateUrl: './recipe-detail.component.html',
  styleUrls: ['./recipe-detail.component.css']
})
export class RecipeDetailComponent implements OnInit {

  recipe: Recipe;

  constructor(private recipeService: RecipeService, private route: ActivatedRoute) {

   }

  ngOnInit() {
    this.loadRecipe();
  }

  private loadRecipe() {
    const id = this.route.snapshot.paramMap.get('id');
    this.recipeService.getRecipe(Number(id)).subscribe((recipe: Recipe) => { this.recipe = recipe; } );
  }

  getRecipe(): Recipe {
    return this.recipe;
  }

}
