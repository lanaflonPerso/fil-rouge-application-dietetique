import { BrowserModule } from '@angular/platform-browser';
import { NgModule, Component } from '@angular/core';
import { AppComponent } from './app.component';
import { HeaderComponent } from './header/header.component';
import { FooterComponent } from './footer/footer.component';
import { AlimentComponent } from './aliment/aliment.component';
import { AlimentDetailComponent } from './aliment/aliment-detail/aliment-detail.component';
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
import { RecipeService } from './services/recipe.service';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { FlexLayoutModule } from '@angular/flex-layout';
import { NavItemsService } from './services/nav-items.service';
import { RecipeAddComponent } from './recipe/recipe-add/recipe-add.component';

import { HomeComponent } from './home/home.component';
import { DisplayComponent } from './display/display.component';
import { GenericComponent } from './generic/generic.component';
import { CategoryComponent } from './category/category.component';
import { MealComponent } from './meal/meal.component';
import { DietComponent } from './diet/diet.component';
import { MenuComponent } from './menu/menu.component';
import { MomentComponent } from './moment/moment.component';

const routes: Routes = [
  { path: '', component: HomeComponent },
  { path: 'aliment/category', component: CategoryComponent },
  { path: 'aliment/:nomAliment', component: AlimentDetailComponent },
  { path: 'aliment', component: AlimentComponent },
  { path: 'recipe', component: RecipeComponent },
  { path: 'recipe/add', component: RecipeAddComponent},
  { path: 'meal', component: MealComponent},
];

@NgModule({
  declarations: [
    AppComponent,
    HeaderComponent,
    FooterComponent,
    RecipeComponent,
    RecipeAddComponent,
    AlimentComponent,
    AlimentDetailComponent,
    HomeComponent,
    DisplayComponent,
    GenericComponent,
    CategoryComponent,
    MealComponent,
    DietComponent,
    MenuComponent,
    MomentComponent
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
