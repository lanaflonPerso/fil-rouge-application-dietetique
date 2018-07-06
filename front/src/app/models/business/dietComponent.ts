export class DietComponent {
    id: number;
    name: String;
    description: String;
    visual: String;

    constructor(id: number, name: String, description: String, visual: String) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.visual = visual;
    }
}
