import { enableProdMode } from '@angular/core';
import { Ingredient } from './ingredient';
import { DietComponent } from './dietComponent';

export class Recipe extends DietComponent {

    ingredients: Ingredient[] = [];

    constructor(id: number, name: String, description: String, visual: String) {
        super(id, name, description, visual);
    }

    public addIngredient(ingredient: Ingredient): void {
        this.ingredients.push(ingredient);
        //ingredient.setRecipe(this);
    }

    public getIngredients(): Ingredient[] {
        return this.ingredients;
    }

    public getCg(): Number {
        let cg: Number = 0;
        if ( this.ingredients.length > 0) {
           for ( let i = 0 ; i < this.ingredients.length ; i++ ) {
                cg = Number(cg) + Number(this.ingredients[i].getCg());
           }
        }
        return cg;
    }

    public getCgFor100(): Number {

        let cg100: Number = 0;
        if ( this.ingredients.length > 0) {
           for ( let i = 0 ; i < this.ingredients.length ; i++ ) {
                cg100 = Number(cg100) + Number(this.ingredients[i].getCgFor100());
           }
        }
        return cg100;

    }

    public getEnergy(): number {
        let energy = 0;
        if ( this.ingredients.length > 0) {
            for ( let i = 0 ; i < this.ingredients.length ; i++ ) {
                energy += this.ingredients[i].getEnergy();
            }
        }
        return energy;
    }

    public getProteins(): number {
        let proteins = 0;
        if ( this.ingredients.length > 0) {
            for ( let i = 0 ; i < this.ingredients.length ; i++ ) {
                proteins += this.ingredients[i].getProteins();
            }
        }
        return proteins;

    }

    public getGlucids(): number {
        let glucids = 0;
        if ( this.ingredients.length > 0) {
            for ( let i = 0 ; i < this.ingredients.length ; i++ ) {
                glucids += this.ingredients[i].getGlucids();
            }
        }
        return glucids;

    }

    public getLipids(): number {
        let lipids = 0;
        if ( this.ingredients.length > 0) {
            for ( let i = 0 ; i < this.ingredients.length ; i++ ) {
                lipids +=  this.ingredients[i].getLipids();
            }
        }
        return lipids;

    }
}
