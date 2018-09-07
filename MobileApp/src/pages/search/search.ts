import { Component, OnInit } from '@angular/core';
import { IonicPage, NavController, NavParams, Loading } from 'ionic-angular';

import { Item } from '../../models/item';
import { Items } from '../../providers';
import { LoadingService } from '../../CoreAssestiveModules/Services/LoadingService';

@IonicPage()
@Component({
  selector: 'page-search',
  templateUrl: 'search.html'
})
export class SearchPage implements OnInit {
  ngOnInit(): void {
    console.log('ONINT');
    this.loading.show("Searching");

    setTimeout(() => {
      this.loading.hide();
    }, 5000);
  }

  currentItems: any = [];

  constructor(public navCtrl: NavController, public navParams: NavParams, public items: Items ,
    private loading: LoadingService) {
      console.log('ONINT**********');

     }

     doRefresh(refresher){
       console.log("Asasas");
       setTimeout(() => {
        refresher.complete();
       }, 3000);
     }


  /**
   * Perform a service for the proper items.
   */
  getItems(ev) {
    let val = ev.target.value;
    if (!val || !val.trim()) {
      this.currentItems = [];
      return;
    }
    this.currentItems = this.items.query({
      name: val
    });
  }

  /**
   * Navigate to the detail page for this item.
   */
  openItem(item: Item) {
    this.navCtrl.push('ItemDetailPage', {
      item: item
    });
  }

}
