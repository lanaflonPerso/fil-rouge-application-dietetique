import { CategoryService } from './../../services/category.service';
import { AlimentService } from './../../services/aliment.service';
import { Component, OnInit } from '@angular/core';
import { Aliment } from '../../models/business/aliment';
import { Router } from '@angular/router';
import { Category } from '../../models/business/category';

@Component({
  selector: 'app-aliment-add',
  templateUrl: './aliment-add.component.html',
  styleUrls: ['./aliment-add.component.css']
})

export class AlimentAddComponent implements OnInit {

  private aliment: Aliment;

  private category: Category;

  private categories: Category[];

  constructor(private alimentService: AlimentService, private categoryService: CategoryService, private router: Router) {

  }

  ngOnInit() {
    this.aliment = new Aliment(null, '', '', '' , 0, 0, 0, 0, 0);
    this.categoryService.getCategories().subscribe((categories: Category[]) => { this.categories = categories; })
  }

  public getAliment(): Aliment {
    return this.aliment;
  }

  public addAliment() {

    this.alimentService.addAliment(this.aliment).subscribe((aliment: Aliment) => {
      this.router.navigateByUrl('/aliment');
    });
  }

  public getCategories() {
    return  this.categories;
  }

  public changeCat(select) {
    this.categoryService.getCategory(Number(select.value)).subscribe((category) => {
       this.category = category;
       this.aliment.setCategory(this.category);
      }
    );
  }

}
