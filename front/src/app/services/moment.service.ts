import { Injectable, OnInit } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';
import Moment from '../models/business/moment';

const httpOptions = {
  headers: new HttpHeaders( {
      'Accept': 'application/json',
      'Content-Type': 'application/json'
    })
};

@Injectable({
  providedIn: 'root'
})

export class MomentService {

  private restUrl = 'http://localhost:8090/moment';
  constructor( private http: HttpClient ) {
  }

  public addMoment(moment: Moment): Observable<Moment> {
    return this.http.post<Moment>(this.restUrl, moment, httpOptions);
  }
    public updateMoment(moment: Moment): Observable<Moment> {
      return this.http.put<Moment>(this.restUrl, moment, httpOptions);
  }

  public getMoments(): Observable<Moment[]> {
      return this.http.get<Moment[]>(this.restUrl);
  }

  public getMoment(id: number): Observable<Moment> {
    return this.http.get<Moment>(this.restUrl + '/' + id);
  }
}
