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

  public category: Category;

  private categories: Category[];

  constructor(private categoryService: CategoryService,  private router: Router, private route: ActivatedRoute) {
    super();
  }

  ngOnInit() {
    this.loadCategory();
  }

  loadCategory() {
    const id = this.route.snapshot.paramMap.get('id');
    this.categoryService.getCategory(Number(id)).subscribe( (category) => { this.category = category; } );
  }

  public getCategory(): Category {
    return this.category;
  }

  public updateCategory() {

    const cat: Category = this.getCategory();
    this.categoryService.updateCategory(cat).subscribe(() => {
      this.router.navigateByUrl('/aliment/category');
  });
  }

}
