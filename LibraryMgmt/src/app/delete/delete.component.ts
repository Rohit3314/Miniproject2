import { Component, OnInit } from '@angular/core';
import { LibraryService } from '../library.service';

@Component({
  selector: 'app-delete',
  templateUrl: './delete.component.html',
  styleUrls: ['./delete.component.css']
})
export class DeleteComponent implements OnInit {

  constructor(private libraryservice:LibraryService) { }

  ngOnInit(): void {
  }
  deletedata(deleteform)
  {
    this.libraryservice.deleteservice(deleteform.value).subscribe();
  }
}
