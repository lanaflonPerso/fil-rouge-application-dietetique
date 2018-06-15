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
                      //console.log(this.route.snapshot.paramMap.get('nomAliment'));
                      //console.log(params);
                      //const name: string = params.nomAliment;
                      //const realTmp = this.alimentService.getAliment(name.valueOf());
                      //this.aliment = realTmp;
                      this.aliment = this.alimentService.getAliment(this.route.snapshot.paramMap.get('nomAliment'));

      });
  }

}
