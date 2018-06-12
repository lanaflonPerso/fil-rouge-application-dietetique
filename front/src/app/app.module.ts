import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { AppComponent } from './app.component';
import { HeaderComponent } from './header/header.component';
import { FooterComponent } from './footer/footer.component';
import { BodyComponent } from './body/body.component';
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

const routes: Routes = [
  { path: '', component: RecipeComponent },
  { path: 'recipe', component: RecipeComponent },
  { path: 'recipe/:id', component: RecipeComponent },
  { path: 'recipe/delete/:id', component: RecipeComponent },

];

@NgModule({
  declarations: [
    AppComponent,
    HeaderComponent,
    FooterComponent,
    BodyComponent,
    RecipeComponent
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
