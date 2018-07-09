import { GenericComponent } from './../../generic/generic.component';
import { Component, OnInit } from '@angular/core';
import { CategoryService } from '../../services/category.service';
import { Category } from '../../models/business/category';
import { ActivatedRoute, Router } from '@angular/router';
import { Aliment } from '../../models/business/aliment';

@Component({
  selector: 'app-category-add',
  templateUrl: './category-add.component.html',
  styleUrls: ['./category-add.component.css']
})
export class CategoryAddComponent extends GenericComponent implements OnInit {

  private category: Category;
  private categories: Category[];
  constructor(private categoryService: CategoryService,  private router: Router) {
    super();
  }

  ngOnInit() {
    this.category = new Category(null, '');
    this.categoryService.getCategories()
    .subscribe(categories => this.categories = categories);
  }

   public getCategories(): Category[] {
    return  this.categories;
  }

  public getCategory(): Category {
    return this.category;
  }

  public addCategory() {
    this.categoryService.addCategory(this.category);
    this.category = new Category(null, '');
    this.router.navigateByUrl('/aliment/category');
  }

}
