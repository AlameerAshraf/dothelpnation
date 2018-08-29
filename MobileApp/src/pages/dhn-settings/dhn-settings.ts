import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams, AlertController } from 'ionic-angular';
import {  Storage } from '@ionic/storage';


@IonicPage()
@Component({
  selector: 'page-dhn-settings',
  templateUrl: 'dhn-settings.html',
})
export class DhnSettingsPage {

  constructor(public navCtrl: NavController,
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
    this.Storage.remove('access_token').then(() => {
      this.navCtrl.setRoot('DhnLoginPage');
    })
  }

}
