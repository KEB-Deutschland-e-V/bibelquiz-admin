import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { environment } from './../../environments/environment';

@Injectable({
  providedIn: 'root'
})
export class BackendService {

  constructor(private httpClient: HttpClient) { }

  public getDifficulties() {
    return this.httpClient.get<Difficulty[]>(environment.backend + '/difficulties');
  }
  
  // TODO: questions CRUD

  // TODO: stats GET
}
export interface Difficulty {
  id:string;
  name:string;
}