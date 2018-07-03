import { Aliment } from './aliment';

export class Component {

    quantity: number;
    aliment: Aliment = null;

    constructor(id: number, quantity: number , aliment: Aliment) {
       this.aliment = aliment;
        this.quantity = quantity;
    }

    public setAliment(aliment: Aliment) {
        this.aliment = aliment;
    }

    public getAliment() {
        return this.aliment;
    }
}
