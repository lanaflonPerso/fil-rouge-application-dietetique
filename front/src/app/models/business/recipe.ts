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
}
