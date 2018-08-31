import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { LoadingService } from '../../CoreAssestiveModules/Services/LoadingService';



@IonicPage()
@Component({
  selector: 'page-dhn-blogs',
  templateUrl: 'dhn-blogs.html',
})
export class DhnBlogsPage {

  data = null;

  constructor(public navCtrl: NavController, 
    public navParams: NavParams,
    private LoadingService: LoadingService) {
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad DhnBlogsPage');
  }

}
