import { Injectable } from '@angular/core';
import { Aliment } from './models/aliment';

@Injectable({
  providedIn: 'root'
})
export class AlimentService {

  aliments: Aliment[] = []

  constructor() {
    // tslint:disable-next-line:max-line-length
    const saucisse = new Aliment(1, 'saucisse', 'https://images.marmitoncdn.org/pixcontent/bf2efd42-ffbc-4c4d-b7c7-637a1c67adcb/6d8a4455-566c-48ed-8aef-0fe77a8bb89b/manger_une_saucisse_1_398.jpg', 2, 3, 4);
    const frite =  new Aliment(2, 'frite', 'http://cache.marieclaire.fr/data/photo/w850_c17/cuisine/41/fritemanioc2.jpg', 20, 30, 40);
    this.aliments.push(saucisse, frite);
  }

  public getAliments() {
    return this.aliments;
  }
}
