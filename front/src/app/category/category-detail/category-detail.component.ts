import { GenericComponent } from './../../generic/generic.component';
import { Component, OnInit } from '@angular/core';
import { Category } from '../../models/business/category';
import { CategoryService } from '../../services/category.service';
import { Router, ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-category-detail',
  templateUrl: './category-detail.component.html',
  styleUrls: ['./category-detail.component.css']
})
export class CategoryDetailComponent extends GenericComponent implements OnInit {

  private category: Category;

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
  }

   public getCategories(): Category[] {
    return  this.categoryService.getCategories();
  }

  public getCategory(): Category {
    return this.category;
  }

  public updateCategory() {
    this.router.navigateByUrl('/aliment/category');
  }

}
