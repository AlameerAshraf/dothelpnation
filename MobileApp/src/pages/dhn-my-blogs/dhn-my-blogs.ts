import { Storage } from '@ionic/storage';
import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';

@IonicPage()
@Component({
  selector: 'page-dhn-my-blogs',
  templateUrl: 'dhn-my-blogs.html',
})
export class DhnMyBlogsPage {
  dir: string;

  constructor(
    public navCtrl: NavController, 
    public navParams: NavParams,
    private storage: Storage,
  ) {

    this.storage.get("UserSettings").then(settings => {
      this.dir = settings.def_lang == "ar" ? "rtl" : "ltr";
    });

  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad DhnMyBlogsPage');
  }

}
