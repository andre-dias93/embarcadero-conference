import {Injectable} from '@angular/core';
import {HttpClient} from "@angular/common/http";

import {Observable} from "rxjs";

import {environment} from "../../environments/environment";

@Injectable({
  providedIn: 'root'
})
export class PreviewService {

  constructor(private http: HttpClient) {
  }

  viewer$(route: string): Observable<any> {
    return this.http.get(`${environment.api}/${route}`, {
      observe: 'response',
      responseType: 'blob'
    });
  }
}
