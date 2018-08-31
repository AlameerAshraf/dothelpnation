import { Component, Input } from '@angular/core';
import { IonicPage } from 'ionic-angular';

@IonicPage()
@Component({
  selector: 'page-spinners',
  templateUrl: 'spinners.html',
})
export class SpinnersPage {
  @Input('data') data: any;
  path : string;

  constructor() {}

  ngOnChanges(changes: {[propKey: string]: any}) {
    this.path = "assets/svg/" +  changes['data'].currentValue.icon + ".svg";
  }

  getData = ():any => {
    return this.data;
  }

}
