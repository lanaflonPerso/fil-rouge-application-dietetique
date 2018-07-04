import { Ingredient } from './../../models/business/ingredient';
import { GenericComponent } from './../../generic/generic.component';
import { AlimentService } from '../../services/aliment.service';
import { Component, OnInit } from '@angular/core';
import { Recipe } from '../../models/business/recipe';
import { RecipeService } from '../../services/recipe.service';
import { Aliment } from '../../models/business/aliment';
import {  FileUploader, FileSelectDirective } from 'ng2-file-upload/ng2-file-upload';

const URL = 'http://localhost:8090/upload';

@Component({
  selector: 'app-recipe-add',
  templateUrl: './recipe-add.component.html',
  styleUrls: ['./recipe-add.component.css']
})
export class RecipeAddComponent extends GenericComponent implements OnInit {

  public uploader: FileUploader = new FileUploader({url: URL, itemAlias: 'photo'});

  constructor(private recipeService: RecipeService, private alimentService: AlimentService) {
    super();
  }

  ngOnInit() {
    this.uploader.onAfterAddingFile = (file) => { file.withCredentials = false; };
    this.uploader.onCompleteItem = (item: any, response: any, status: any, headers: any) => {
         console.log('ImageUpload:uploaded:', item, status, response);
         alert('File uploaded successfully');
     };
  }

  getRecipe(): Recipe {
    return this.recipeService.getRecipe();
  }

  getFilteredAliments(): Aliment[] {
    let filteredAliments = this.alimentService.getAliments();

    if (this.getSearchText() !== '' ) {
      // tslint:disable-next-line:max-line-length
      filteredAliments = this.alimentService.getAliments().filter(aliment => aliment.name.toLocaleLowerCase().includes( this.getSearchText().toLocaleLowerCase() ));
    }

    return filteredAliments;

  }

  addAlimentToRecipe(aliment: Aliment): void {
    this.recipeService.addAlimentToRecipe(aliment, 100);
  }

  removeAlimentFromRecipe(aliment: Aliment): void {
    this.recipeService.removeAlimentFromRecipe(aliment, 100);
  }

  updateQuantity(event, ingredient: Ingredient) {
    ingredient.quantity = !isNaN(event.target.value) ? Number(event.target.value) : 0;
  }
}
