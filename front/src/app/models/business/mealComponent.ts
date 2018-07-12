import { Aliment } from './aliment';
import { Recipe } from './recipe';

// import { Aliment } from './aliment';

export class MealComponent {

    id: number;
    quantity: number;
    aliment: Aliment = null;
    recipe: Recipe = null;

    constructor(id: number, quantity: number, aliment: Aliment, recipe: Recipe) {
        this.id = id;
        this.quantity = quantity;
        this.aliment = aliment;
        this.recipe = recipe;
    }

    public getId() {
        return this.id;
    }

    /*
    constructor(id: number, quantity: number , aliment: Aliment) {
        this.aliment = aliment;
        this.quantity = quantity;
    }

    public setAliment(aliment: Aliment) {
        this.aliment = aliment;
    }

    public getAliment() {
        return this.aliment;
    }
    */
}
