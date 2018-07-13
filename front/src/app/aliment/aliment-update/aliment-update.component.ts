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

  private file = null;

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
      console.log(aliment);
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
    if( this.file != null) {
      this.alimentService.upload(this.file).subscribe((data) => {
        this.aliment.visual = data.secure_url;
      this.alimentService.addAliment(this.aliment).subscribe((aliment: Aliment) => {
        this.router.navigateByUrl('/aliment');
      });
      });
    } else {
      this.alimentService.addAliment(this.aliment).subscribe((aliment: Aliment) => {
        this.router.navigateByUrl('/aliment');
      });
    }
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

  public  onFileChanged(event) {
      this.file = event.target.files[0];

      const reader = new FileReader();
      const aliment = this.aliment;
      reader.onload = function(evt: ProgressEvent) {
        console.log(evt);
         aliment.visual =  evt.target.result;
      };

      reader.readAsDataURL(this.file);

    }

}
