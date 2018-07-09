import { GenericComponent } from './../generic/generic.component';
import { Component, OnInit, ViewChild } from '@angular/core';
import { CategoryService } from '../services/category.service';
import { Category } from '../models/business/category';
// import { DataSource } from '@angular/cdk/table';
// import { BehaviorSubject, Observable } from 'rxjs';
// import { MatSort, MatTableDataSource } from '@angular/material';

@Component({
  selector: 'app-category',
  templateUrl: './category.component.html',
  styleUrls: ['./category.component.css']
})

export class CategoryComponent extends GenericComponent implements OnInit {

 /* dataSource;
      displayedColumns = [];
      @ViewChild(MatSort) sort: MatSort;

      columnNames = [{
        id: 'id',
        value: 'No.'

      }, {
        id: 'name',
        value: 'Name'
      }
     ];*/

     /* createTable() {
        this.dataSource = new MatTableDataSource(this.categoryService.getCategories());
        this.dataSource.sort = this.sort;
      }*/

  categories: Category[];

  constructor(private categoryService: CategoryService) {
    super();
  }

  ngOnInit() {

    // this.displayedColumns = this.columnNames.map(x => x.id);
    // this.createTable();
    this.categoryService.getCategories()
    .subscribe(categories => { this.categories = categories; console.log(categories); });
    this.gererateDataTable();
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

/*export interface Element {
  position: number;
  name: string;
  weight: number;
  symbol: string;
}*/
