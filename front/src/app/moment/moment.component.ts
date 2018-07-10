import { Component, OnInit } from '@angular/core';
import { MomentService } from '../services/moment.service';
import Moment from '../models/business/moment';
import { GenericComponent } from '../generic/generic.component';

@Component({
  selector: 'app-moment',
  templateUrl: './moment.component.html',
  styleUrls: ['./moment.component.css']
})
export class MomentComponent extends GenericComponent implements OnInit {

  private moments: Moment[];

  constructor(private momentService: MomentService) {
    super();
  }

  ngOnInit() {
    this.momentService.getMoments().subscribe((moments: Moment[]) => { this.moments = moments; } );
  }

  public getMoments() {
    return this.moments;
  }



}
