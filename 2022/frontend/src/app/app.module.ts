import {NgModule} from '@angular/core';
import {LayoutModule} from '@angular/cdk/layout';
import {RouterLinkWithHref} from "@angular/router";
import {HttpClientModule} from "@angular/common/http";
import {BrowserModule} from '@angular/platform-browser';
import {BrowserAnimationsModule} from "@angular/platform-browser/animations";

import {AppComponent} from './app.component';
import {HomeComponent} from './pages/home/home.component';
import {PreviewComponent} from './pages/preview/preview.component';
import {SideNavComponent} from './pages/side-nav/side-nav.component';

import {MatIconModule} from '@angular/material/icon';
import {MatListModule} from '@angular/material/list';
import {MatCardModule} from "@angular/material/card";
import {MatButtonModule} from '@angular/material/button';
import {MatToolbarModule} from '@angular/material/toolbar';
import {MatSidenavModule} from '@angular/material/sidenav';
import {MatProgressSpinnerModule} from "@angular/material/progress-spinner";

import {AppRoutingModule} from "./app-routing.module";

@NgModule({
  declarations: [
    AppComponent,
    HomeComponent,
    SideNavComponent,
    PreviewComponent
  ],
  imports: [
    LayoutModule,
    MatIconModule,
    MatListModule,
    BrowserModule,
    MatCardModule,
    MatButtonModule,
    HttpClientModule,
    AppRoutingModule,
    MatToolbarModule,
    MatSidenavModule,
    RouterLinkWithHref,
    BrowserAnimationsModule,
    MatProgressSpinnerModule
  ],
  bootstrap: [AppComponent]
})
export class AppModule {
}
