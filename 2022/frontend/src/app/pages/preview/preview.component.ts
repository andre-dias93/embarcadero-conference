import {ActivatedRoute} from "@angular/router";
import {Component, OnInit} from '@angular/core';
import {DomSanitizer} from "@angular/platform-browser";

import {PreviewService} from "../../service/preview.service";

@Component({
  selector: 'app-preview',
  template: `
      <ng-container *ngIf="!src && src !== 0 else embed">
          <div class="row preview">
              <mat-spinner color="warn"></mat-spinner>
          </div>
      </ng-container>
      <ng-template #embed>
          <ng-container *ngIf="src else empty">
              <embed [src]="src" [width]="'100%'" [height]="'87%'"/>
          </ng-container>
          <ng-template #empty>
              <div class="row preview">
                  <h1 style="color: gray">Nenhum relatório encontrado!</h1>
              </div>
          </ng-template>
      </ng-template>
  `,
  styles: [`
      .preview {
          width: 100%;
          height: 80%;
          display: flex;
          flex-direction: row;
          justify-content: center;
          align-items: center;
      }

      h1 {
          color: #000000b8;
      }
  `]
})
export class PreviewComponent implements OnInit {

  src: any;

  constructor(private route: ActivatedRoute,
              private sanitizer: DomSanitizer,
              private previewService: PreviewService) {
  }

  ngOnInit(): void {
    this.previewService.viewer$(this.route.snapshot.url[1].path).subscribe({
      next: (file: any) => {
        const blob = new Blob([file.body], {type: 'application/pdf'})
        this.src = this.sanitizer.bypassSecurityTrustResourceUrl(URL.createObjectURL(blob));
      },
      error: () => this.src = 0
    })
  }
}
