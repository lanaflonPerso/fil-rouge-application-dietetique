import { Injectable, OnInit } from '@angular/core';
import { Aliment } from '../models/business/aliment';
import LIST_ALIMENTS from '../models/datas/aliments';
import { Category } from '../models/business/category';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';
import { map } from 'rxjs/operators';

const httpOptions = {
  headers: new HttpHeaders( {
      'Accept': 'application/json',
      'Content-Type': 'application/json'
    })
};

@Injectable({
  providedIn: 'root'
})

export class AlimentService implements OnInit {

  private restUrl = 'http://localhost:8090/aliment';

  aliments: Aliment[] = [];
  aliment: Aliment = null;

  constructor(private http: HttpClient) {

    /*const aliments = LIST_ALIMENTS.aliment;

    for (let i = 0; i < aliments.length ; i++) {
      const alim = aliments[i];
      // tslint:disable-next-line:max-line-length
       // tslint:disable-next-line:max-line-length
       const aliment = new Aliment( alim.id, alim.name,
        alim.description, alim.visual, alim.protein, alim.glucid, alim.lipid, alim.fiber, alim.ig);
      aliment.setCategory(new Category(alim.category.id, alim.category.name));
      this.aliments.push(aliment);
    }*/
    this.getRestAliments();
  }

  ngOnInit(): void {
    this.getRestAliments();
  }

  public updateAliment(aliment: Aliment) {

    this.http.put(this.restUrl, aliment, httpOptions).subscribe(result => {
       this.getRestAliments();
     });
  }

  public addAliment(aliment: Aliment): void {
    this.http.post(this.restUrl, aliment, httpOptions).subscribe(result => {
      this.getRestAliments();
    });
  }

  public getAliments(): Aliment[] {
    return this.aliments;
  }

  public getAliment(id: number) {
    const real = this.aliments.filter((elt) => elt.id === id);
    return real[0];
  }

  // Read all REST categories
  getRestAliments(): void {
    this.restCategoriesServiceGetRestItems()
     .subscribe(
      aliments => {
         this.aliments = aliments;
       }
     );
 }

 // Rest Items Service: Read all REST Items
 restCategoriesServiceGetRestItems(): Observable<any[]> {
    return this.http.get<any[]>(this.restUrl).pipe(map(data => data));
 }
}
