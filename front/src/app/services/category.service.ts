import { Category } from './../models/business/category';
import { Injectable } from '@angular/core';
import LIST_CATEGORIES from '../models/datas/categories';

@Injectable({
  providedIn: 'root'
})
export class CategoryService {

  categories: Category[] = [];
  categorie: Category = null;

  constructor() {

    const categories = LIST_CATEGORIES.categories;

    for (let i = 0; i < categories.length ; i++) {
      const cat = categories[i];
      // tslint:disable-next-line:max-line-length
      const category = new Category( cat.id, cat.name);
      this.categories.push(category);
    }

  }

  public getCategories() {
    return this.categories;

  }

  public getCategorie(id: number) {
    const real = this.categories.filter((elt) => elt.id === id);
    return real[0];
  }
}
