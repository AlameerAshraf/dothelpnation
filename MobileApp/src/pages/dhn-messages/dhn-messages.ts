import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';

@IonicPage()
@Component({
  selector: 'page-dhn-messages',
  templateUrl: 'dhn-messages.html',
})
export class DhnMessagesPage {

  constructor(
    public navCtrl: NavController, 
    public navParams: NavParams) {
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad DhnMessagesPage');
  }

  startChat(Id){
    this.navCtrl.push("DhnChatPage" , {
      "MessagingParams" : { "UserName" : "AlameerAshraf" , "Id" : Id }
    });
  }

}
