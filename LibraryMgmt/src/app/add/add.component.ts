import { Component, OnInit } from '@angular/core';
import { LibraryService } from '../library.service';

@Component({
  selector: 'app-add',
  templateUrl: './add.component.html',
  styleUrls: ['./add.component.css']
})
export class AddComponent implements OnInit {

  constructor(private libraryservice:LibraryService) { }

  ngOnInit(): void {
  }
  
  insertdata(insertform)
  {
    this.libraryservice.addservice(insertform.value).subscribe();
  }
}
