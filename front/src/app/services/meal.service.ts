import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Injectable } from '@angular/core';
import { Meal } from '../models/business/meal';
import LIST_MEALS from '../models/datas/meal';
import { Aliment } from '../models/business/aliment';
import { DietComponent } from '../models/business/dietComponent';
import { Component } from '../models/business/component';

const httpOptions = {
  headers: new HttpHeaders( {
      'Accept': 'application/json',
      'Content-Type': 'application/json'
    })
};

@Injectable({
  providedIn: 'root'
})
export class MealService {

  private restUrl = 'http://localhost:8090/meal';
  constructor(private http: HttpClient) {

  }

  public addAlimentToMeal(meal: Meal, aliment: Aliment, qty: number) {
  }

  public addMeal(meal: Meal): Observable<Meal> {
    return this.http.post<Meal>(this.restUrl, meal, httpOptions);
  }

  public getMeals(): Observable<Meal[]> {
    return this.http.get<Meal[]>(this.restUrl);
  }

  public getMeal(id: number): Observable<Meal> {
    return this.http.get<Meal>(this.restUrl + '/' + id);
  }
}


