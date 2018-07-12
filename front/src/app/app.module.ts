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
  MatExpansionModule,
  MatSelectModule
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

import { MomentComponent } from './moment/moment.component';
import { AddComponent as  MomentAddComponent } from './moment/add/add.component';
import { DetailComponent as  MomentDetailComponent } from './moment/detail/detail.component';
import { MealAddComponent } from './meal/meal-add/meal-add.component';
import { RecipeDetailComponent } from './recipe/recipe-detail/recipe-detail.component';
import { CategoryAddComponent } from './category/category-add/category-add.component';
import { CategoryDetailComponent } from './category/category-detail/category-detail.component';
import { MealDetailComponent } from './meal/meal-detail/meal-detail.component';

import { HttpClientModule } from '@angular/common/http';
import { AlimentAddComponent } from './aliment/aliment-add/aliment-add.component';
import { AlimentUpdateComponent } from './aliment/aliment-update/aliment-update.component';
import { AddComponent } from './moment/add/add.component';
import { DetailComponent } from './moment/detail/detail.component';
import { MealEditComponent } from './meal/meal-edit/meal-edit.component';
import { RecipeEditComponent } from './recipe/recipe-edit/recipe-edit.component';
//import { ImageUploadModule } from 'angular2-image-upload';


export const routes: Routes = [
  { path: '', component: HomeComponent },
  { path: 'aliment/category', component: CategoryComponent },
  { path: 'aliment/category/add', component: CategoryAddComponent },
  { path: 'aliment/category/detail/:id', component: CategoryDetailComponent },
  { path: 'aliment/add', component: AlimentAddComponent},
  { path: 'aliment/detail/:id', component: AlimentDetailComponent },
  { path: 'aliment/update/:id', component: AlimentUpdateComponent },
  { path: 'aliment', component: AlimentComponent },
  { path: 'recipe', component: RecipeComponent },
  { path: 'recipe/add', component: RecipeAddComponent},
  { path: 'recipe/detail/:id', component: RecipeDetailComponent},
  { path: 'recipe/edit/:id', component: RecipeEditComponent},
  { path: 'meal/add', component: MealAddComponent},
  { path: 'meal/edit/:id', component: MealEditComponent},
  { path: 'meal/detail/:id', component: MealDetailComponent},
  { path: 'meal', component: MealComponent},
  { path: 'moment', component: MomentComponent},
  { path: 'moment/add', component: MomentAddComponent},
  { path: 'moment/detail/:id', component: MomentDetailComponent},
];

@NgModule({
  declarations: [
    AppComponent,
    HeaderComponent,
    FooterComponent,
    RecipeComponent,
    RecipeAddComponent,
    RecipeDetailComponent,
    AlimentComponent,
    AlimentDetailComponent,
    AlimentAddComponent,
    AlimentUpdateComponent,
    HomeComponent,
    DisplayComponent,
    GenericComponent,
    CategoryComponent,
    MealComponent,
    MealAddComponent,
    MealDetailComponent,
    MomentComponent,
    CategoryAddComponent,
    CategoryDetailComponent,
    AddComponent,
    DetailComponent,
    MealEditComponent,
    RecipeEditComponent
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
    MatSelectModule,
    FlexLayoutModule,
    RouterModule.forRoot(routes),
    HttpClientModule,
    //ImageUploadModule.forRoot()
  ],
  providers: [
    RecipeService,
    NavItemsService
  ]
  ,
  bootstrap: [AppComponent]
})
export class AppModule { }
