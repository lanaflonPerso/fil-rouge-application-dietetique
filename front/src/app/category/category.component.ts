import { GenericComponent } from './../generic/generic.component';
import { Component, OnInit } from '@angular/core';
import { CategoryService } from '../services/category.service';
import { Category } from '../models/business/category';

@Component({
  selector: 'app-category',
  templateUrl: './category.component.html',
  styleUrls: ['./category.component.css']
})
export class CategoryComponent extends GenericComponent implements OnInit {

  constructor(private categoryService: CategoryService) {
    super();
  }

  ngOnInit() {
  }

  public getCategories(): Category[] {
    return  this.categoryService.getCategories();
  }

  public getFileteredCategories(): Category[] {
    let categories: Category[] = this.getCategories();

    if (this.getSearchText() !== '' ) {
      categories = this.categoryService.getCategories()
      .filter(category => category.name.toLocaleLowerCase().includes( this.getSearchText().toLocaleLowerCase() ));
    }

    return categories;
  }
}
