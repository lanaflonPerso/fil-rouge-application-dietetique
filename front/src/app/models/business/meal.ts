import { Menu } from './menu';

export class Meal extends Menu {

    date: Date;
    fk_menu: number;
    fk_moment: number;

    constructor(id: number, date: Date, fk_menu: number, fk_moment: number) {
        super(id, name);
        this.date = date;
        this.fk_menu = fk_menu;
        this.fk_moment = fk_moment;
    }
}
