import { GenericComponent } from './../../generic/generic.component';
import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { AlimentService } from '../../services/aliment.service';
import { Aliment } from '../../models/business/aliment';

@Component({
  selector: 'app-aliment-detail',
  templateUrl: './aliment-detail.component.html',
  styleUrls: ['./aliment-detail.component.css']
})
export class AlimentDetailComponent extends GenericComponent implements OnInit {


  private aliment: Aliment;

  constructor(private alimentService: AlimentService, private route: ActivatedRoute, private router: Router) {
    super();
  }

  ngOnInit() {
   this.loadAliment();
  }

  private loadAliment() {
    const id = this.route.snapshot.paramMap.get('id');
    this.alimentService.getAliment(Number(id)).subscribe((aliment: Aliment ) => { this.aliment = aliment; } );
  }

  public getAliment(): Aliment {
    return this.aliment;
  }

}
