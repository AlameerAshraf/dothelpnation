import { IDataService } from './IDataService';

import { Injectable } from '@angular/core';
import { Http, Headers, RequestOptions } from '@angular/http';
import { Observable } from 'rxjs/Observable';

import 'rxjs/add/operator/catch';
import { map } from 'rxjs/operators';


@Injectable()
export class FakeService  {

  private UsersList: any[] = [];

  AddUser(User: any){
    this.UsersList.push(User);
    console.log(this.UsersList);
  }

}
