import { Component, OnInit } from '@angular/core';
import { Aliment } from '../../models/business/aliment';
import { AlimentService } from '../../services/aliment.service';
import { CategoryService } from '../../services/category.service';
import { Category } from '../../models/business/category';
import { ActivatedRoute, Router } from '@angular/router';

@Component({
  selector: 'app-aliment-update',
  templateUrl: './aliment-update.component.html',
  styleUrls: ['./aliment-update.component.css']
})
export class AlimentUpdateComponent implements OnInit {

  private aliment: Aliment;

  private categories: Category[];

  private category: Category;

  // tslint:disable-next-line:max-line-length
  constructor(private alimentService: AlimentService, private categoryService: CategoryService, private route: ActivatedRoute, private router: Router) {

  }

  ngOnInit() {
    this.aliment = new Aliment(null, '', '', '', 0, 0, 0, 0, 0);
    this.loadAliment();
    this.loadCategories();
  }

  private loadCategories() {
    this.categoryService.getCategories().subscribe((categories: Category[]) => { this.categories = categories; } );
  }

  private loadAliment() {
    const id = this.route.snapshot.paramMap.get('id');
    this.alimentService.getAliment(Number(id)).subscribe((aliment: Aliment ) => {
      this.aliment = aliment;
    });
  }

  public getAliment(): Aliment {
    return this.aliment;
  }

  public getCategories(): Category[] {
    return this.categories;
  }

  public getCategorie() {
    return this.category;
  }

  public updateAliment() {
    console.log(this.aliment);
    this.alimentService.updateAliment(this.aliment).subscribe( (aliment: Aliment) => {
      this.router.navigateByUrl('/aliment');
    });

  }

  public getAlimentById(id: number) {
    this.alimentService.getAliment(id);
  }

 public changeCat(select) {

  this.categoryService.getCategory(Number(select.value)).subscribe((category) => {
       this.category = category;
       this.aliment.category = category;
      }
    );
  }

}
