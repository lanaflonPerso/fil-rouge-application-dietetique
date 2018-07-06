import { Category } from './../models/business/category';
import { Injectable } from '@angular/core';
import LIST_CATEGORIES from '../models/datas/categories';
import { Observable, throwError  } from 'rxjs';
import { HttpClient, HttpHeaders, HttpErrorResponse } from '@angular/common/http';
import { catchError, retry, map } from 'rxjs/operators';
import { Aliment } from '../models/business/aliment';

const httpOptions = {
  headers: new HttpHeaders({ 'Content-Type': 'application/json' })
};

@Injectable({
  providedIn: 'root'
})
export class CategoryService {

  private restUrl = 'http://localhost:8090/aliment/category';

  categories: Category[] = [];
  categorie: Category = null;

  constructor(private http: HttpClient) {

    /*const categories = LIST_CATEGORIES.categories;
   for (let i = 0; i < categories.length ; i++) {
      const cat = categories[i];
      // tslint:disable-next-line:max-line-length
      const category = new Category( cat.id, cat.name);
      this.categories.push(category);
    }*/

    this.getRestCategories();

  }

  public addCategory(category: Category) {

  category.addAliment(new Aliment(null, 'name', 'desc', 'visual', 1, 2, 3, 4, 5));

  this.http.post(this.restUrl, category, httpOptions).subscribe(result => {
     this.getRestCategories();
   });

  }

  public updateCategory(category: Category) {

    this.http.put(this.restUrl, category, httpOptions).subscribe(result => {
       this.getRestCategories();
     });
  }

  public getCategories() {
    return this.categories;
  }

  public getCategorie(id: number) {
    const real = this.categories.filter((elt) => elt.id === id);
    return real[0];
  }


   // Read all REST categories
   getRestCategories(): void {
    this.restCategoriesServiceGetRestItems()
     .subscribe(
       categories => {
         this.categories = categories;
       }
     );
 }

 // Rest Items Service: Read all REST Items
 restCategoriesServiceGetRestItems(): Observable<any[]> {
    return this.http.get<any[]>(this.restUrl).pipe(map(data => data));
 }
}
