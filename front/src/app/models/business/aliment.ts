import { Category } from './category';
import { DietComponent } from './dietComponent';

export class Aliment extends DietComponent {

    category: Category = null;

    id: number;
    name: String;
    description: String;
    visual: String;
    proteins: number;
    glucids: number;
    lipids: number;
    fibers: number;
    ig: number;

    // tslint:disable-next-line:max-line-length
    constructor(id: number, name: String, description: String, visual: String, proteins: number, glucids: number, lipids: number, fibers: number, ig: number) {
        super();
        this.id = id;
        this.name = name;
        this.description = description;
        this.visual = visual;
        this.proteins = proteins;
        this.glucids = glucids;
        this.lipids = lipids;
        this.fibers = fibers;
        this.ig = ig;
    }

    public setCategory(category: Category) {
        this.category = category;
    }

    public getEnergy(): number {
        return this.proteins * 4 + this.glucids * 4 + 9 * this.lipids;
    }

    public getProteins(): number {
        return this.proteins;
    }

    public getGlucids(): number {
        return this.glucids;
    }

    public getLipids(): number {
        return this.lipids;
    }
}
