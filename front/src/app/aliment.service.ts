import { Injectable } from '@angular/core';
import { Aliment } from './models/aliment';
import LIST_ALIMENTS from './liste-aliments';

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
      this.aliments.push(new Aliment( alim.id, alim.name, alim.description, alim.visual, alim.protein, alim.glucid, alim.lipid, alim.fiber, alim.ig));
    }

  }

  public getAliments() {
    return this.aliments;

  }

  public getAliment(iReal: string) {
    console.log('iReal searched: ' + iReal + ' ' + typeof(iReal));

    const real = this.aliments.filter((elt) => elt.name.toLowerCase() === iReal.toLowerCase());
    console.log(real);
    return real[0];
  }
}
