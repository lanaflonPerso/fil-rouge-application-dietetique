import { Aliment } from './aliment';

export class Recipe {
    id: String;
    name: String;
    visual: String;
    aliments: Aliment[];

    constructor(id: String, name: String, visual: String) {
        this.id = id;
        this.name = name;
        this.visual = visual;
    }

    public addAliments(aliment: Aliment) {
        this.aliments.push(aliment);
    }

    public getAliments() {
        return this.aliments;
    }
}
