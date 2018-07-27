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

  /**
   * Url to access to the WebService
   */
  private restUrl = 'http://localhost:8090/moment';
  constructor( private http: HttpClient ) {
  }

  /**
   * Call a WS to add a moment to the database
   *
   * @param {moment} moment moment to add
   * @returns Observable<Moment>
   */
  public addMoment(moment: Moment): Observable<Moment> {
    return this.http.post<Moment>(this.restUrl, moment, httpOptions);
  }
  /**
   * Call a WS to update a moment in the database
   *
   * @param {moment} moment moment to update
   * @returns Observable<Moment>
   *
   */
  public updateMoment(moment: Moment): Observable<Moment> {
      return this.http.put<Moment>(this.restUrl, moment, httpOptions);
  }

  /**
   * Call a Ws to get a list of moments
   *
   * @returns Observable<Moment>
   */
  public getMoments(): Observable<Moment[]> {
      return this.http.get<Moment[]>(this.restUrl);
  }

  /**
   * Call a WS to get a specific moment
   * @param id id to the moment to get
   * @returns Observable<Moment>
   */
  public getMoment(id: number): Observable<Moment> {
    return this.http.get<Moment>(this.restUrl + '/' + id);
  }
}
