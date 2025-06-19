import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http'
import { Observable } from 'rxjs';
import { Promocao } from '../types/type';
import { environment } from '../../../environments/environment';
@Injectable({
  providedIn: 'root'
})
export class PromocaoService {
  private readonly apiUrl: string = environment.apiUrl

  constructor(
    private readonly httpClient: HttpClient
  ) { }

  public listar(): Observable<Array<Promocao>> {
    return this.httpClient.get<Array<Promocao>>(`${this.apiUrl}/promocoes`);
  }
}
