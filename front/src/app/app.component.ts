import { GenericComponent } from './generic/generic.component';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent extends GenericComponent implements OnInit {

 ngOnInit(): void {

  }

}
