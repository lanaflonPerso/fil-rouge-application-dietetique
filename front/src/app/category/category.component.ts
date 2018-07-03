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

  private searchText = '';

  constructor(private categoryService: CategoryService) {
    super();
  }

  ngOnInit() {
  }

  public getCategories(): Category[] {
    return  this.categoryService.getCategories();
  }

  public getFileteredCategories(): Category[] {
    if (this.searchText !== '' ) {
      return this.categoryService.getCategories()
      .filter(category => category.name.toLocaleLowerCase().includes( this.searchText.toLocaleLowerCase() ));
    } else {
      return this.getCategories();
    }
  }

  public filter(searchText: string): void {
    this.searchText = searchText;
  }

}
