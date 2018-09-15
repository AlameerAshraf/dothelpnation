import { SignalR, SignalRConnection, ConnectionStatus } from 'ng2-signalr';
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
  chats: any[];


  // Current Sent message from user 
  newMessage: string;

  // SignalR


  constructor(
    public navCtrl: NavController,
    private _signalR: SignalR,
    public navParams: NavParams) {
    let chatParamters = navParams.get("MessagingParams");
    this.currentUserId = chatParamters.Id;
    this.currentUserName = chatParamters.UserName;

    // chat list .. 
    this.chats = [
      { userId: '22', sendDate: new Date(), message: '3am elnas !', showMessage: "false", userName: "Ahmed Elmasry" },
      { userId: '33', sendDate: new Date(), message: 'shaba7 elsenin !', showMessage: "false", userName: "AlameerAshraf" },
    ];

  }


  ngOnInit(): void {
    this._signalR.connect().then((c) => {
      console.log(c);
      c.invoke("send" , "amir" , "dothelpnation").then((tst) => {
        console.log(tst);
      })
    });


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
