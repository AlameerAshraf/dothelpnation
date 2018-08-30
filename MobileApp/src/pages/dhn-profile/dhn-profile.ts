import { Component } from '@angular/core';
import { Storage } from '@ionic/storage';
import { IonicPage, NavController, NavParams, Events } from 'ionic-angular';

@IonicPage()
@Component({
  selector: 'page-dhn-profile',
  templateUrl: 'dhn-profile.html',
})
export class DhnProfilePage {

  CurrentUserProfileData: any;

  constructor(public navCtrl: NavController, 
    public navParams: NavParams,
    private storage: Storage,
    private events: Events) {
      this.storage.get('Profile_Data').then((Profile_Data) => {
        console.log(Profile_Data)
        if(Profile_Data.photo == null){
          Profile_Data.photo = "assets/img/avatar2.png";
        }
        this.CurrentUserProfileData = Profile_Data;
      });
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad DhnProfilePage');
  }

}
