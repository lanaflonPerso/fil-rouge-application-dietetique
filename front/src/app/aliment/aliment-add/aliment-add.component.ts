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

  private file = null;

  private category: Category;

  private categories: Category[];

  constructor(private alimentService: AlimentService, private categoryService: CategoryService, private router: Router) {

  }

  ngOnInit() {
    this.aliment = new Aliment(null, '', '', '' , 0, 0, 0, 0, 0);
    this.categoryService.getCategories().subscribe((categories: Category[]) => { this.categories = categories; });
  }

  public getAliment(): Aliment {
    return this.aliment;
  }

  public addAliment() {

    if (this.file != null) {
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

  public getCategories() {
    return  this.categories;
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
      // console.log(evt);
       // aliment.visual =  evt.target.result != undefined ? evt.target.result : null;
    };

    reader.readAsDataURL(this.file);

  }

}
