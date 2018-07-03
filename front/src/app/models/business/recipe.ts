import { Ingredient } from './ingredient';
import { DietComponent } from './dietComponent';

export class Recipe extends DietComponent {
    id: number;
    name: String;
    visual: String;
    ingredients: Ingredient[] = [];

    constructor(id: number, name: String, visual: String) {
        super();
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
