import { MealComponent } from './mealComponent';

export class Menu {

    id: number;
    name: String;
    mealComponent: MealComponent[] = [];

    constructor(id: number, name: String) {
        this.id = id;
        this.name = name;
    }
}
