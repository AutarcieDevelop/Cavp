import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppComponent } from './app.component';
import {NavbarComponent} from './navbar/navbar.component';
import {HoraireComponent} from './horaire/horaire.component';
import {depotHoraireComponent} from './depotHoraire/depotHoraire.component';

import {Router, RouterModule, Routes} from "@angular/router";
import {cavpComponent} from "./cavp/cavp.component";

const routes: Routes=[
  {path: 'depotHoraire', component: depotHoraireComponent},
  {path: 'cavp', component: cavpComponent},
  {path: 'horaire', component: HoraireComponent}

];

@NgModule({
  declarations: [
    AppComponent,
    NavbarComponent,
    HoraireComponent,
    depotHoraireComponent,
    cavpComponent
  ],
  imports: [
    BrowserModule,
    RouterModule.forRoot(routes)
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
