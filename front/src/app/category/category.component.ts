import { GenericComponent } from './../generic/generic.component';
import { Component, OnInit, ViewChild } from '@angular/core';
import { CategoryService } from '../services/category.service';
import { Category } from '../models/business/category';

@Component({
  selector: 'app-category',
  templateUrl: './category.component.html',
  styleUrls: ['./category.component.css']
})

export class CategoryComponent extends GenericComponent implements OnInit {

  categories: Category[];

  constructor(private categoryService: CategoryService) {
    super();
  }

  ngOnInit() {
    this.loadCategories();
  }

  private loadCategories() {
    this.categoryService.getCategories().subscribe((categories) => { this.categories = categories; } );
  }

  public getCategories(): Category[] {
    return  this.categories;
  }

  public getFileteredCategories(): Category[] {
    let categories: Category[] = this.getCategories();

    if (this.getSearchText() !== '' ) {
      categories = this.categories
      .filter(category => category.name.toLocaleLowerCase().includes( this.getSearchText().toLocaleLowerCase() ));
    }

    return categories;
  }
}
