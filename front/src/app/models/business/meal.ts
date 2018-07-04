export class Meal {

    id: number;
    date: String;
    name: String;
    moment: String;
    kcal: number;

    constructor(id: number, date: String, name: String, moment: String, kcal: number) {
        this.id = id;
        this.date = date;
        this.name = name,
        this.moment = moment;
        this.kcal = kcal;
    }
}
