import { Aliment } from './aliment';
import { Recipe } from './recipe';
import { DietComponent } from './dietComponent';

// import { Aliment } from './aliment';

export class MealComponent {

    id: number;
    quantity: number;
    dietComponent: DietComponent = null;
    aliment: Aliment = null;
    recipe: Recipe = null;

    constructor(id: number, quantity: number, aliment: Aliment, recipe: Recipe) {
        this.id = id;
        this.quantity = quantity;
        if(aliment !== null){
            this.dietComponent = aliment;
        } else if ( recipe !== null) {
            this.dietComponent = recipe;
        }
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
