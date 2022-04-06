import { Injectable } from '@angular/core';
import {HttpClient } from '@angular/common/http'
import { Observable } from 'rxjs/internal/Observable';
@Injectable({
  providedIn: 'root'
})
export class LibraryService {

  constructor(private http:HttpClient) { }
  
  link = 'http://localhost:9000';

  
  public bookservice(bookdata)
  {
    return this.http.post(this.link+'/update',bookdata);
  }

  public addservice(addbookdata)
  {
    return this.http.post(this.link+'/insert',addbookdata);
  }
  
  public deleteservice(deletebookdata)
  {
    return this.http.post(this.link+'/delete',deletebookdata);
  }
 public fetchservice()
 {
 return this.http.get(this.link+'/fetch');
 }
  
}
