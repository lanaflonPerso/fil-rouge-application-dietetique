import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { AppComponent } from './app.component';
import { HeaderComponent } from './header/header.component';
import { FooterComponent } from './footer/footer.component';
import { BodyComponent } from './body/body.component';
import { AlimentComponent } from './aliment/aliment.component';
import { RecipeComponent } from './recipe/recipe.component';
import { FormsModule } from '@angular/forms';
import { MatIconModule,
  MatCheckboxModule,
  MatAutocompleteModule,
  MatDatepickerModule,
  MatFormFieldModule,
  MatNativeDateModule,
  MatInputModule,
  MatMenu,
  MatMenuModule,
  MatToolbarModule,
  MatTableModule,
  MatButtonModule,
  MatListModule,
  MatGridListModule,
  MatGridTile,
  MatExpansionModule
} from '@angular/material';
import { RouterModule, Routes } from '@angular/router';
import { RecipeService } from './recipe.service';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { FlexLayoutModule } from '@angular/flex-layout';
import { NavItemsService } from './nav-items.service';
import { RecipeAddComponent } from './recipe/recipe-add/recipe-add.component';
import { DetailComponent } from './aliment/detail/detail.component';

const routes: Routes = [
  { path: '', component: RecipeComponent },
  { path: 'aliment/:nomAliment', component: DetailComponent },
  { path: 'aliment', component: AlimentComponent },
  { path: 'recipe', component: RecipeComponent },
  { path: 'recipe/add', component: RecipeAddComponent},
];

@NgModule({
  declarations: [
    AppComponent,
    HeaderComponent,
    FooterComponent,
    BodyComponent,
    RecipeComponent,
    RecipeAddComponent,
    AlimentComponent,
    DetailComponent
  ],
  imports: [
    BrowserModule,
    BrowserAnimationsModule,
    FormsModule,
    MatIconModule,
    MatCheckboxModule,
    MatAutocompleteModule,
    MatDatepickerModule,
    MatFormFieldModule,
    MatNativeDateModule,
    MatInputModule,
    MatMenuModule,
    MatToolbarModule,
    MatTableModule,
    MatButtonModule,
    MatListModule,
    MatGridListModule,
    MatExpansionModule,
    FlexLayoutModule,
    RouterModule.forRoot(routes)
  ],
  providers: [
    RecipeService,
    NavItemsService
  ]
  ,
  bootstrap: [AppComponent]
})
export class AppModule { }
