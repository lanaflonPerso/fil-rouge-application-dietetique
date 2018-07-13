import { Observable, Subject, of} from 'rxjs';
import { map } from 'rxjs/operators';
import { GenericComponent } from './../generic/generic.component';
import { Component, OnInit } from '@angular/core';
import { AlimentService } from '../services/aliment.service';
import { CategoryService } from '../services/category.service';
import { Aliment } from '../models/business/aliment';
import { Router } from '../../../node_modules/@angular/router';



@Component({
  selector: 'app-aliment',
  templateUrl: './aliment.component.html',
  styleUrls: ['./aliment.component.css']
})

export class AlimentComponent extends GenericComponent implements OnInit {

errorMsg = '';

constructor(private alimentService: AlimentService) {
    super();
  }

  public aliments: Aliment[];

  ngOnInit() {
    this.aliments = [];
    this.loadAliments();
    this.gererateDataTable();
    this.observeAliments();
  }

  private observeAliments() {

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

