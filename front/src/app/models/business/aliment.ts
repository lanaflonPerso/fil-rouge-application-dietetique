import { Category } from './category';

export class Aliment {

    category: Category = null;

    id: number;
    name: String;
    description: String;
    visual: String;
    protein: number;
    glucid: number;
    lipid: number;
    fiber: number;
    ig: number;

    // tslint:disable-next-line:max-line-length
    constructor(id: number, name: String, description: String, visual: String, protein: number, glucid: number, lipid: number, fiber: number, ig: number) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.visual = visual;
        this.protein = protein;
        this.glucid = glucid;
        this.lipid = lipid;
        this.fiber = fiber;
        this.ig = ig;
    }

    public setCategory(category: Category) {
        this.category = category;
    }
}