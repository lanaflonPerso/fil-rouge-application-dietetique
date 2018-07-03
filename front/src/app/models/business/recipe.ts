import { Ingredient } from './ingredient';

export class Recipe {
    id: number;
    name: String;
    visual: String;
    ingredients: Ingredient[] = [];

    constructor(id: number, name: String, visual: String) {
        this.id = id;
        this.name = name;
        this.visual = visual;
    }

    public addIngredient(ingredient: Ingredient) {
        this.ingredients.push(ingredient);
    }

    public getIngredients() {
        return this.ingredients;
    }

    public getCg() {
        let cg: Number = 0;
        if ( this.ingredients.length > 0) {
           for ( let i = 0 ; i < this.ingredients.length ; i++ ) {
                cg = Number(cg) + Number(this.ingredients[i].getCg());
           }
        }
        return cg;
    }

    public getCgFor100() {

        let cg100: Number = 0;
        if ( this.ingredients.length > 0) {
           for ( let i = 0 ; i < this.ingredients.length ; i++ ) {
                cg100 = Number(cg100) + Number(this.ingredients[i].getCgFor100());
           }
        }
        return cg100;

    }
}
