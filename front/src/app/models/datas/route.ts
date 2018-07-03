import { HomeComponent } from '../../home/home.component';
import { CategoryComponent } from '../../category/category.component';
import { AlimentDetailComponent } from '../../aliment/aliment-detail/aliment-detail.component';
import { AlimentComponent } from '../../aliment/aliment.component';
import { RecipeComponent } from '../../recipe/recipe.component';
import { RecipeAddComponent } from '../../recipe/recipe-add/recipe-add.component';
import { RecipeDetailComponent } from '../../recipe/recipe-detail/recipe-detail.component';
import { MealComponent } from '../../meal/meal.component';
import { Routes } from '@angular/router';

export const routes: Routes = [
    { path: '', component: HomeComponent },
    { path: 'aliment/category', component: CategoryComponent },
    { path: 'aliment/:nomAliment', component: AlimentDetailComponent },
    { path: 'aliment', component: AlimentComponent },
    { path: 'recipe', component: RecipeComponent },
    { path: 'recipe/add', component: RecipeAddComponent},
    { path: 'recipe/detail/:id', component: RecipeDetailComponent},
    { path: 'meal', component: MealComponent},
  ];

export default routes;
