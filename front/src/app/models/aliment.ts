export class Aliment {
    id: number;
    name: String;
    visual: String;
    protein: number;
    glucid: number;
    lipid: number;

    constructor(id: number, name: String, visual: String, protein: number, glucid: number, lipid: number) {
        this.id = id;
        this.name = name;
        this.visual = visual;
        this.protein = protein;
        this.glucid = glucid;
        this.lipid = lipid;
    }
}