import { Category } from './../models/business/category';
import { Injectable } from '@angular/core';
import LIST_CATEGORIES from '../models/datas/categories';
import { Observable, throwError, of  } from 'rxjs';
import { HttpClient, HttpHeaders, HttpErrorResponse } from '@angular/common/http';
import { catchError, retry, map } from 'rxjs/operators';
import { Aliment } from '../models/business/aliment';

const httpOptions = {
  headers: new HttpHeaders( {
      'Accept': 'application/json',
      'Content-Type': 'application/json'
    })
};

@Injectable({
  providedIn: 'root'
})

export class CategoryService {

  private restUrl = 'http://localhost:8090/aliment/category';

  constructor(private http: HttpClient) {
  }

  public addCategory(category: Category): Observable<Category> {

  // category.addAliment(new Aliment(null, 'name', 'desc', 'visual', 1, 2, 3, 4, 5));

  return this.http.post<Category>(this.restUrl, category, httpOptions);

  }
  public updateCategory(category: Category): Observable<Category> {
    return this.http.put<Category>(this.restUrl, category, httpOptions);
  }

  public getCategories(): Observable<Category[]> {
    return this.http.get<Category[]>(this.restUrl);
    // .pipe(map(data => data));
  }

  public getCategory(id: number): Observable<Category> {
    return this.http.get<Category>(this.restUrl + '/' + id);
  }
}
