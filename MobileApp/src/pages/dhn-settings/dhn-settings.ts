import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams, AlertController, Events } from 'ionic-angular';
import {  Storage } from '@ionic/storage';
@IonicPage()
@Component({
  selector: 'page-dhn-settings',
  templateUrl: 'dhn-settings.html',
})
export class DhnSettingsPage {

  constructor(public navCtrl: NavController,
    private events: Events,
    public navParams: NavParams ,
    private Storage: Storage,
    public alertCtrl: AlertController) {
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad DhnSettingsPage');
  }

  showConfirm() {
    const confirm = this.alertCtrl.create({
      title: 'Are you sure , You want to logout ?',
      buttons: [
        {
          text: 'Cancel',
          handler: () => {
            confirm.willUnload;
          }
        },
        {
          text: 'Yes',
          handler: () => {
            this.Logout();
          }
        }
      ]
    });
    confirm.present();
  }


  Logout(){
    Promise.all([this.Storage.remove('access_token') , this.Storage.remove('Profile_Data')]).then(() => {
      this.events.publish('logout:clicked');
    });
  }

}