import { CategoryService } from './../services/category.service';
import { Observable, Subject, of} from 'rxjs';
import { map } from 'rxjs/operators';
import { GenericComponent } from './../generic/generic.component';
import { Component, OnInit } from '@angular/core';
import { AlimentService } from '../services/aliment.service';
import { Aliment } from '../models/business/aliment';
import { Router } from '../../../node_modules/@angular/router';
import categories from '../models/datas/categories';
import Category from '../models/business/category';



@Component({
  selector: 'app-aliment',
  templateUrl: './aliment.component.html',
  styleUrls: ['./aliment.component.css']
})

export class AlimentComponent extends GenericComponent implements OnInit {

errorMsg = '';

constructor(private alimentService: AlimentService, private categoryService: CategoryService, private router: Router) {
    super();
  }

  public aliments: Aliment[];

  ngOnInit() {
    this.aliments = [];
    this.loadCategories();
    this.loadAliments();
    this.gererateDataTable();
   // this.observeAliments();
  }

 /* private observeAliments() {

    const myObservable = of( 1, 2, 3 );

    // Create observer object
    const myObserver = {
      next: x       => console.log('Observer got a next value: ' + x),
      error: err    => console.error('Observer got an error: ' + err),
      complete: ()  => console.log('Observer got a complete notification'),
    };

    //myObservable.subscribe(myObserver);

    const subject = new Subject<number>();

    subject.subscribe(myObserver);
    subject.next(10);
    subject.next(4);

  }*/

  private loadCategories() {
     this.categoryService.getCategories().subscribe (
      // tslint:disable-next-line:no-shadowed-variable
      (categories: Category[]) => {
        if ( categories.length === 0 ){
          // tslint:disable-next-line:max-line-length
          this.errorMsg = 'Aucune catégorie n\est présente dans votre référentiel, vous allez être redirigé vers l\'écran des catégories d\aliment';
          setTimeout(
                      () => {
                            this.router.navigateByUrl('/aliment/category');
                      }, 1000
                    );
        }
      }
     );
  }

  public getAliments(): Aliment[] {
    return this.aliments;
  }

  private loadAliments() {
    this.errorMsg = '';
    this.alimentService.getAliments().subscribe(
      (aliments) => {
        this.aliments = aliments;
      }
      ,
      () => {
        this.errorMsg = 'problème de récupération de la liste d\'aliments';
      }
    );
  }

  public getFileteredAliments(): Aliment[] {
    if (this.getSearchText() !== '' ) {
      return this.aliments
      .filter(aliment => aliment.name.toLocaleLowerCase().includes( this.getSearchText().toLocaleLowerCase() ));
    } else {
      return this.aliments;
    }
  }

  public deleteAliment(id: number) {
    this.errorMsg = '';
    this.alimentService.deleteAliment(id).subscribe(
      () => {
        this.loadAliments();
      }
      , () => {
        this.errorMsg = 'impossible de supprimer l\'aliment vérifier qu\'il ne soit pas intégré dans une recette ou un repas';
      }
    );
  }
}

