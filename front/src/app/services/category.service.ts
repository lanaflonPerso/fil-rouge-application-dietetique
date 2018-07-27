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
/**
 * Url to access to the WebService
 */
  private restUrl = 'http://localhost:8090/aliment/category';

  constructor(private http: HttpClient) {
  }
/**
 * Call a WS to Add a new category
 *
 * @param {Category} category
 * @returns Observable<Category>
 */
  public addCategory(category: Category): Observable<Category> {
    return this.http.post<Category>(this.restUrl, category, httpOptions);
  }

/**
 * Call a WS to update a new category
 *
 * @param {Category} category
 * @returns Observable<Category>
 */
  public updateCategory(category: Category): Observable<Category> {
    return this.http.put<Category>(this.restUrl, category, httpOptions);
  }

/**
 * Call a WS to get list a category
 *
 * @returns Observable<Category>
 */
  public getCategories(): Observable<Category[]> {
    return this.http.get<Category[]>(this.restUrl);
    // .pipe(map(data => data));
  }

/**
 * Call a WS to get a specific category
 *
 * @param {number} id id of the catégory to get
 * @returns Observable<Category>
 */
  public getCategory(id: number): Observable<Category> {
    return this.http.get<Category>(this.restUrl + '/' + id);
  }

}
