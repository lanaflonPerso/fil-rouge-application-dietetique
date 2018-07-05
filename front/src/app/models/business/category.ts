import { Aliment } from './aliment';

export class Category {

    id: number;
    name: String;

    aliments: Aliment[];

    constructor(id: number, name: String) {
        this.id = id;
        this.name = name;
        this.aliments = [];
    }

    public addAliment(aliment: Aliment): void {
        this.aliments.push(aliment);
    }

    public getAliments(): Aliment[] {
        return this.aliments;
    }
}
