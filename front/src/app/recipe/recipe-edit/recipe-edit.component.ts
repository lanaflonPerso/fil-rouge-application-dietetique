import { ActivatedRoute, Router } from '@angular/router';
import { RecipeService } from './../../services/recipe.service';
import { GenericComponent } from './../../generic/generic.component';
import { Component, OnInit } from '@angular/core';
import { Recipe } from '../../models/business/recipe';
import { Aliment } from '../../models/business/aliment';
import { Ingredient } from '../../models/business/ingredient';
import { AlimentService } from '../../services/aliment.service';

@Component({
  selector: 'app-recipe-edit',
  templateUrl: './recipe-edit.component.html',
  styleUrls: ['./recipe-edit.component.css']
})
export class RecipeEditComponent extends GenericComponent implements OnInit {
 
  private aliments: Aliment[];
  private recipe: Recipe = null;

  constructor(
    private recipeService: RecipeService,
    private route: ActivatedRoute,
    private router: Router,
    private alimentService: AlimentService) {
    super();
  }

  ngOnInit() {
    this.loadRecipe();
    this.loadAliments();
  }

  private loadRecipe() {
    const id = this.route.snapshot.paramMap.get('id');
    this.recipeService.getRecipe(Number(id)).subscribe((recipe: Recipe) => { this.recipe = recipe; } );
  }

  private loadAliments() {
    this.alimentService.getAliments().subscribe( (aliments: Aliment[] ) => { this.aliments = aliments; } );
  }

  public getRecipe() {
    return this.recipe;
  }

  public updateRecipe() {
    this.recipeService.updateRecipe(this.recipe).subscribe( () => { this.router.navigateByUrl('/recipe'); } );
  }

  public addAlimentToRecipe(aliment: Aliment): void {
    console.log(this.recipe);
    this.recipeService.addAlimentToRecipe(this.recipe, aliment, 100);
  }

  public removeAlimentFromRecipe(aliment: Aliment): void {
    //this.recipeService.removeAlimentFromRecipe(aliment, 100);
  }

  public updateQuantity(event, ingredient: Ingredient) {
    ingredient.quantity = !isNaN(event.target.value) ? Number(event.target.value) : 0;
  }

  public getFilteredAliments(): Aliment[] {
    let filteredAliments = this.aliments;

    if (this.getSearchText() !== '' ) {
      // tslint:disable-next-line:max-line-length
      filteredAliments = this. aliments.filter(aliment => aliment.name.toLocaleLowerCase().includes( this.getSearchText().toLocaleLowerCase() ));
    }

    return filteredAliments;
  }

}
