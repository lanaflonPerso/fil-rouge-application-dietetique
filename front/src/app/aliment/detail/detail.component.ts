import { Component, OnInit } from '@angular/core';
import { AlimentService } from '../../aliment.service';
import { ActivatedRoute, Router } from '@angular/router';

@Component({
  selector: 'app-detail',
  templateUrl: './detail.component.html',
  styleUrls: ['./detail.component.css']
})
export class DetailComponent implements OnInit {

  idReal;
  aliment;

  constructor(private alimentService: AlimentService, private route: ActivatedRoute, private router: Router) { }

  ngOnInit() {
    this.route.params.subscribe
    (
        params => {
                      // console.log(params);
                      const name: string = params.nomAliment;
                      const realTmp = this.alimentService.getAliment(name.valueOf());
                      this.aliment = realTmp;
      });
      // console.log('hors subscribe');
  }

}
