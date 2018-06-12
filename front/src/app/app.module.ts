import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppComponent } from './app.component';
import { HeaderComponent } from './header/header.component';
import { FooterComponent } from './footer/footer.component';
import { BodyComponent } from './body/body.component';
import { AlimentsComponent } from './aliments/aliments.component';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';

import {MatGridListModule, MatCardModule } from '@angular/material';
import {FlexLayoutModule, BREAKPOINT} from '@angular/flex-layout';
import {FormsModule } from '@angular/forms';
import { AlimentComponent } from './aliment/aliment.component';

@NgModule({
  declarations: [
    AppComponent,
    HeaderComponent,
    FooterComponent,
    BodyComponent,
    AlimentsComponent,
    AlimentComponent
  ],
  imports: [
    BrowserModule,
    BrowserAnimationsModule,
    MatGridListModule,
    MatCardModule,
    FlexLayoutModule,
    FormsModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
