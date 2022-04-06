import { Component, NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { AddComponent } from './add/add.component';
import { DeleteComponent } from './delete/delete.component';
import { FetchComponent } from './fetch/fetch.component';
import { UpdateComponent } from './update/update.component';

const routes: Routes = [
  {path :'add-component', component:AddComponent},
  {path : 'delete-component', component:DeleteComponent},
  {path : 'fetch-component', component:FetchComponent},
  {path : 'update-component', component:UpdateComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
export const routingComponents = [AddComponent,DeleteComponent,FetchComponent,UpdateComponent]