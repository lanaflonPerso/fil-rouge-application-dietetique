import { Aliment } from './aliment';

export class Ingredient {

    quantity: number;
    aliment: Aliment = null;

    constructor(id: number, quantity: number , aliment: Aliment) {
       this.aliment = aliment;
        this.quantity = quantity;
    }

    public setAliment(aliment: Aliment) {
        this.aliment = aliment;
    }

    public getAliment(): Aliment {
        return this.aliment;
    }

    public getCg(): Number {
        let cg = 0;

        if ( this.getAliment() != null) {
            cg = this.getAliment().ig *  this.quantity / 100;
        }

        return cg;
    }

    public getCgFor100(): Number {
        let cg: Number = 0;
        const coeff: Number = 100 / this.quantity;
        if ( this.getAliment() != null) {
            cg = Number(coeff) * this.getAliment().ig *  this.quantity / 100;
        }

        return cg;
    }
}
