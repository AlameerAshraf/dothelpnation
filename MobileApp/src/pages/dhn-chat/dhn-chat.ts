import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';



@IonicPage()
@Component({
  selector: 'page-dhn-chat',
  templateUrl: 'dhn-chat.html',
})
export class DhnChatPage {

  constructor(
    public navCtrl: NavController,
    public navParams: NavParams) {
      let chatParamters = navParams.get("MessagingParams");
      console.log(chatParamters);
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad DhnChatPage');
  }

}
