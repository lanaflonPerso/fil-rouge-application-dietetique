import { Component } from './component';
import Moment from './moment';

export class Meal {

    id: number;
    name: String;
    date: String;
    moment: Moment = null;
    components: Component[] = [];

    constructor(id: number, date: String, name: String, moment: Moment) {
        this.id = id;
        this.date = date;
        this.name = name,
        this.moment = moment;
    }
}
