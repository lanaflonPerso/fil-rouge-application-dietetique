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

  constructor(private categoryService: CategoryService,  private router: Router) {
    super();
  }

  ngOnInit() {
    this.category = new Category(null, '');
  }

   public getCategories(): Category[] {
    return  this.categoryService.getCategories();
  }

  public getCategory(): Category {
    return this.category;
  }

  public addCategory() {
    // const aliment: Aliment = new Aliment(null, 'toto', '', '', 1, 1, 1, 1, 1 );
    // this.category.aliments.push(aliment);
    // aliment.setCategory(new Category(this.category.id, this.category.name));
    this.categoryService.addCategory(this.category);
    // console.log(this.category);
    // const category = new Category(null, this.category.name);
    // this.categoryService.getCategories().push(category);
    // this.category = new Category(null, '');
    this.router.navigateByUrl('/aliment/category');
  }

}
