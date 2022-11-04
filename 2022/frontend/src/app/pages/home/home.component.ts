import {Component} from '@angular/core';

@Component({
  selector: 'app-home',
  template: `
      <div style="padding: 10px">
          <mat-card style="box-shadow: 0 0.5rem 1rem rgb(0 0 0 / 13%)">
              <h2>Embarcadero Conference 2022!</h2>
              <span><strong>Case Fiorilli:</strong> Relatórios via APIs com Horse e Angular!</span>
          </mat-card>
      </div>`,
})
export class HomeComponent {
}
