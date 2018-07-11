import { ActivatedRoute, Router } from '@angular/router';
import { RecipeService } from './../../services/recipe.service';
import { GenericComponent } from './../../generic/generic.component';
import { Component, OnInit } from '@angular/core';
import { Recipe } from '../../models/business/recipe';

@Component({
  selector: 'app-recipe-edit',
  templateUrl: './recipe-edit.component.html',
  styleUrls: ['./recipe-edit.component.css']
})
export class RecipeEditComponent extends GenericComponent implements OnInit {

  private recipe: Recipe = null;

  constructor(private recipeService: RecipeService, private route: ActivatedRoute, private router: Router ) {
    super();
  }

  ngOnInit() {
    this.loadRecipe();
  }

  private loadRecipe() {
    const id = this.route.snapshot.paramMap.get('id');
    this.recipeService.getRecipe(Number(id)).subscribe((recipe: Recipe) => { this.recipe = recipe; } );
  }

  public getRecipe() {
    return this.recipe;
  }

  public updateRecipe() {
    this.recipeService.updateRecipe(this.recipe).subscribe( () => { this.router.navigateByUrl('/recipe'); } );
  }

}
