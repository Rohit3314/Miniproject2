import { Component, OnInit } from '@angular/core';
import { LibraryService } from '../library.service';

@Component({
  selector: 'app-update',
  templateUrl: './update.component.html',
  styleUrls: ['./update.component.css']
})
export class UpdateComponent implements OnInit {

  constructor(private libraryservice:LibraryService) 
  {}
  ngOnInit(): void {
    throw new Error('Method not implemented.');
  }
  update(updateform)
  {
    this.libraryservice.bookservice(updateform.value).subscribe();
  }
}
