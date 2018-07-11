import { Router } from '@angular/router';
import { MomentService } from './../../services/moment.service';
import { Component, OnInit } from '@angular/core';
import Moment from '../../models/business/moment';

@Component({
  selector: 'app-add',
  templateUrl: './add.component.html',
  styleUrls: ['./add.component.css']
})
export class AddComponent implements OnInit {

  private moment: Moment;

  constructor(private momentService: MomentService, private router: Router) { }

  ngOnInit() {
    this.moment = new Moment();
  }

  public addMoment() {
    this.momentService.addMoment(this.moment).subscribe(() => { this.router.navigateByUrl('/moment'); } );
  }

  public getMoment() {
    return this.moment;
  }

}
