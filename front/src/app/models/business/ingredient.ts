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

    public getEnergy(): number {
        let energy = 0;
        if ( this.getAliment() != null) {
            energy = this.getAliment().getEnergy() * this.quantity;
        }
        return energy;
    }

    public getProteins(): number {
        let proteins = 0;
        if ( this.getAliment() != null) {
            proteins = this.getAliment().getProteins() * this.quantity / 100;
        }
        return proteins;
    }

    public getGlucids(): number {
        let glucids = 0;
        if ( this.getAliment() != null) {
            glucids = this.getAliment().getGlucids() * this.quantity / 100;
        }
        return glucids;
    }

    public getLipids(): number {
        let lipids = 0;
        if ( this.getAliment() != null) {
            lipids = Number(this.getAliment().getLipids()) * this.quantity / 100;
        }
        return lipids;
    }
}
