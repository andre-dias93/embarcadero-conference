import {NgModule} from '@angular/core';
import {RouterModule, Routes} from '@angular/router';

import {HomeComponent} from "./pages/home/home.component";
import {PreviewComponent} from "./pages/preview/preview.component";

const routes: Routes = [
  {
    path: '',
    component: HomeComponent
  },
  {
    path: 'relatorio/profissionais/preview',
    component: PreviewComponent
  },
  {
    path: 'relatorio/cidades/preview',
    component: PreviewComponent
  },
  {
    path: '**',
    redirectTo: '/'
  }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule {
}
