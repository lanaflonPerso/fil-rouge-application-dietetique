import { MealComponent } from './mealComponent';
import Moment from './moment';

export class Meal {

    id: number;
    name: String;
    date: String;
    moment: Moment = null;
    mealComponents: MealComponent[] = [];

    constructor(id: number, date: String, name: String, moment: Moment) {
        this.id = id;
        this.date = date;
        this.name = name,
        this.moment = moment;
    }

    public getCg(): number {
        let cg = 0;
        for (let i = 0; i < this.mealComponents.length; i++) {
            // cg += this.mealComponents[i].dietComponent.getCg();
            if (this.mealComponents[i].type === 'aliment') {
                cg += this.mealComponents[i].aliment.ig * this.mealComponents[i].quantity / 100;
            } else if (this.mealComponents[i].type === 'recipe') {
                cg += Number(this.mealComponents[i].recipe.getCgFor100()) * this.mealComponents[i].quantity;
            }
        }
        return cg;
    }
}
