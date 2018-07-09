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
    this.getRestAlimentById(id);
    return this.aliment;
  }



    getRestAliments(): void {
      this.restAlimentsServiceGetRestItems()
      .subscribe(
        aliments => {
          this.aliments = aliments;
        }
      );
  }

  // Rest Items Service: Read all REST Items
  restAlimentsServiceGetRestItems(): Observable<any[]> {
      return this.http.get<any[]>(this.restUrl).pipe(map(data => data));
  }


  getRestAlimentById(id: number): void {
    this.restAlimentsServiceGetRestItemById(id)
    .subscribe(
      aliment => {
        this.aliment = aliment;
      }
    );
}

// Rest Items Service: Read all REST Items
restAlimentsServiceGetRestItemById(id: number): Observable<any> {
    return this.http.get<any[]>(this.restUrl + '/' + id).pipe(map(data => data));
}


}
