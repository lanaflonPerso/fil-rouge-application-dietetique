import { Component, OnInit } from '@angular/core';
import { AlimentService } from '../aliment.service';

@Component({
  selector: 'app-aliment',
  templateUrl: './aliment.component.html',
  styleUrls: ['./aliment.component.css']
})
export class AlimentComponent implements OnInit {

  constructor(private alimentService: AlimentService) { }

  ngOnInit() {
  }

  public getAliments() {
    return  this.alimentService.getAliments();
  }
}
