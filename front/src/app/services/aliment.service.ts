import { Injectable } from '@angular/core';
import { Aliment } from '../models/business/aliment';
import LIST_ALIMENTS from '../models/datas/aliments';
import { Category } from '../models/business/category';

@Injectable({
  providedIn: 'root'
})

export class AlimentService {

  aliments: Aliment[] = [];
  aliment: Aliment = null;

  constructor() {

    const aliments = LIST_ALIMENTS.aliment;

    for (let i = 0; i < aliments.length ; i++) {
      const alim = aliments[i];
      // tslint:disable-next-line:max-line-length
      const aliment = new Aliment( alim.id, alim.name, alim.description, alim.visual, alim.protein, alim.glucid, alim.lipid, alim.fiber, alim.ig);
      aliment.setCategory(new Category(alim.category.id, alim.category.name));
      this.aliments.push(aliment);
    }

  }

  public getAliments() {
    return this.aliments;
  }

  // public getAliment(iReal: string) {
  //   const real = this.aliments.filter((elt) => elt.name.toLowerCase() === iReal.toLowerCase());
  //   return real[0];
  // }

  public getAliment(iReal: number) {
    const real = this.aliments.filter((elt) => elt.id === iReal);
    return real[0];
  }
}
