import { Category } from './../../models/business/category';
import { GenericComponent } from './../../generic/generic.component';
import { Component, OnInit } from '@angular/core';
import { CategoryService } from '../../services/category.service';
import { Router, ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-category-detail',
  templateUrl: './category-detail.component.html',
  styleUrls: ['./category-detail.component.css']
})
export class CategoryDetailComponent extends GenericComponent implements OnInit {

  private category: Category;

  private categories: Category[];

  constructor(private categoryService: CategoryService,  private router: Router, private route: ActivatedRoute) {
    super();
    this.route.params.subscribe
    (
        params => {
          this.category = this.categoryService.getCategorie(Number(this.route.snapshot.paramMap.get('id')));
        }
    );
  }

  ngOnInit() {
    this.categoryService.getCategories()
    .subscribe(categories => this.categories = categories);
  }

   public getCategories(): Category[] {
    return  this.categories;
  }

  public getCategory(): Category {
    return this.category;
  }

  public updateCategory() {

    const cat: Category = this.getCategory();
    this.categoryService.updateCategory(cat);
    this.router.navigateByUrl('/aliment/category');
  }

}
