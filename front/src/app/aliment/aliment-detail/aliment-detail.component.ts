import { GenericComponent } from './../../generic/generic.component';
import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { AlimentService } from '../../services/aliment.service';

@Component({
  selector: 'app-aliment-detail',
  templateUrl: './aliment-detail.component.html',
  styleUrls: ['./aliment-detail.component.css']
})

export class AlimentDetailComponent extends GenericComponent implements OnInit {


  idReal;
  aliment;

  constructor(private alimentService: AlimentService, private route: ActivatedRoute, private router: Router) {
    super();
  }

  ngOnInit() {

    this.route.params.subscribe
    (
        params => {
                      // this.aliment = this.alimentService.getAliment(this.route.snapshot.paramMap.get('nomAliment'));
                      this.aliment = this.alimentService.getAliment(Number(this.route.snapshot.paramMap.get('id')));

      });
  }

}
