import { Component, OnInit } from '@angular/core';
import { LibraryService } from '../library.service';

@Component({
  selector: 'app-fetch',
  templateUrl: './fetch.component.html',
  styleUrls: ['./fetch.component.css']
})
export class FetchComponent implements OnInit 
{

   bookdetails;

  constructor(private libraryservice:LibraryService) { this.fetchdata(); }

  ngOnInit(): void {
  }
  fetchdata()
  {
    this.libraryservice.fetchservice().subscribe(
      (resp) => { this.bookdetails=resp; }
    );
  }
}
