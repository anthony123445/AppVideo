import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import {Iniciosesion} from './Iniciosesion/LoginUser'
import {PanelComponent} from './panelprincipal/panel.component'

const routes: Routes = [
  {path:'Iniciosesion',component:Iniciosesion},
  {path:'panel',component:PanelComponent},
  {path:'',redirectTo:'/panel',pathMatch:'full'}




];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
