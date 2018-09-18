import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { Component, OnInit } from '@angular/core';
import { Url } from './../../CoreAssestiveModules/Url';


@IonicPage()
@Component({
  selector: 'page-dhn-chat',
  templateUrl: 'dhn-chat.html',
})
export class DhnChatPage implements OnInit {
  currentUserName;
  currentUserId;
  currentEmail;
  currentPhotoUrl;
  chats: any[];


  // Current Sent message from user 
  newMessage: string;

  // SignalR


  constructor(
    public navCtrl: NavController,
    public navParams: NavParams) {
    let chatParamters = navParams.get("MessagingParams");
    this.currentUserId = chatParamters.Id;
    this.currentUserName = chatParamters.UserName;
    this.currentEmail = chatParamters.Email;
    this.currentPhotoUrl = chatParamters.PhotoUrl;

    // chat list .. 
    this.chats = [
      // { userId: '22', sendDate: new Date(), message: '3am elnas !', showMessage: "false", userName: "Ahmed Elmasry" },
      // { userId: '33', sendDate: new Date(), message: 'shaba7 elsenin !', showMessage: "false", userName: "AlameerAshraf" },
    ];

  }


  ngOnInit(): void {

  }


  sendMessage() {

    this.chats.push({
      userId: '33',
      sendDate: new Date(),
      message: this.newMessage,
      userName: "AlameerAshraf",
      showMessage: "false"
    });
    this.newMessage = "";
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad DhnChatPage');
  }

}
