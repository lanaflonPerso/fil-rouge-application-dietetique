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
  MatGridTile
} from '@angular/material';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { RecipeService } from './recipe.service';

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
    MatGridListModule
  ],
  providers: [
    RecipeService
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
