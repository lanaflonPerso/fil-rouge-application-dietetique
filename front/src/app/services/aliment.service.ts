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

export class AlimentService {

  private restUrl = 'http://localhost:8090/aliment';

  constructor(private http: HttpClient) {

  }

  public updateAliment(aliment: Aliment): Observable<Aliment> {
    return this.http.put<Aliment>(this.restUrl, aliment, httpOptions);
  }

  public addAliment(aliment: Aliment): Observable<Aliment> {
    return this.http.post<Aliment>(this.restUrl, aliment, httpOptions);
  }

  public getAliments(): Observable<Aliment[]> {
    return this.http.get<Aliment[]>(this.restUrl);
  }

  public getAliment(id: number): Observable<Aliment> {
    return this.http.get<Aliment>(this.restUrl + '/' + id);
  }

  public deleteAliment(id: number): Observable<Aliment> {
    return this.http.delete<Aliment>(this.restUrl + '/' + id);
  }

  public upload(file) {
    // https://github.com/davidostermann/CPRO-cloudinary-direct-upload/blob/master/src/App.js
    const urlCloudinary = 'https://api.cloudinary.com/v1_1/dfexmhgqi/image/upload';
    const formData = new FormData();
    formData.append('file', file);
    formData.append('upload_preset', 'rhd8pini');
    return this.http.post<any>(urlCloudinary, formData);
  }
}
