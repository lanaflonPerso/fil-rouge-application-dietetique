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

  private categorie: Category;

  private categories: Category[];

  // tslint:disable-next-line:max-line-length
  constructor(private alimentService: AlimentService, private categoryService: CategoryService, private route: ActivatedRoute, private router: Router) {

  }

  ngOnInit() {
    this.aliment = new Aliment(null, 'test', 'test', 'not visual' , 0, 0, 0, 0, 0);
    this.route.params.subscribe
    (
        params => {
                       this.aliment = this.alimentService.getAliment(Number(this.route.snapshot.paramMap.get('id')));
                       console.log(this.aliment);
      });
  }

  public getAliment(): Aliment {
    return this.aliment;
  }

  public addAliment() {

    this.alimentService.addAliment(this.aliment);
    this.router.navigateByUrl('/aliment');
  }

  public getAlimentById(id: number) {
    this.alimentService.getAliment(id);
  }

  public getCategories() {
    return  this.categoryService.getCategories();
  }

  public changeCat(select) {
    this.categorie = this.categoryService.getCategorie(Number(select.value));
    this.aliment.setCategory(this.categorie);
  }

}
