import { ActivatedRoute, Router } from '@angular/router';
import { MomentService } from './../../services/moment.service';
import { Component, OnInit } from '@angular/core';
import Moment from '../../models/business/moment';

@Component({
  selector: 'app-detail',
  templateUrl: './detail.component.html',
  styleUrls: ['./detail.component.css']
})
export class DetailComponent implements OnInit {

  private moment: Moment;

  constructor(private momentService: MomentService, private router: Router , private route: ActivatedRoute ) { }

  ngOnInit() {
    const id = this.route.snapshot.paramMap.get('id');
    this.momentService.getMoment(Number(id)).subscribe((moment: Moment) => { this.moment = moment; } );
  }

  public getMoment() {
    return this.moment;
  }

  public updateMoment() {
    this.momentService.updateMoment(this.moment).subscribe( (moment: Moment) => {  
      this.router.navigateByUrl('/moment');
    });
  }

}
