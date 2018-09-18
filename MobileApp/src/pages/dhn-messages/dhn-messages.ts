import { Storage } from '@ionic/storage';
import { DataService } from './../../CoreAssestiveModules/Services/DataService';
import { Component, OnInit } from '@angular/core';
import { Events } from 'ionic-angular';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { SignalR, SignalRConnection, ConnectionStatus } from 'ng2-signalr';
import { Url } from '../../CoreAssestiveModules/Url';


@IonicPage()
@Component({
  selector: 'page-dhn-messages',
  templateUrl: 'dhn-messages.html',
})
export class DhnMessagesPage implements OnInit {
  userChats;
  logginedUserEmail;
  access_token;



  constructor(
    public navCtrl: NavController,
    private events: Events,
    private _signalR: SignalR,
    private DataService: DataService,
    private storage: Storage,
    public navParams: NavParams) {

    this.storage.get('access_token').then((SECURITY_DATA) => {
      this.access_token = SECURITY_DATA.access_token;
    });

    
    this.storage.get("Profile_Data").then(PROFILE_DATA => {
      this.logginedUserEmail = PROFILE_DATA.email;
    });



  }

  ionViewWillEnter() {
    this.DataService.Get(`${Url.ApiUrlLocalTunnul()}/GetChatList?email=${this.logginedUserEmail}`, null, this.access_token).subscribe((data) => {
      data.forEach(element => {
        if (element.from_user_photo == null) {
          element.from_user_photo = "assets/img/avatar2.png";
        }
      });
      console.log(data)

      this.userChats = data;
    })
  }

  ngOnInit(): void {
    // this._signalR.connect().then((c) => {
    //   console.log(c);
    //   // this.events.subscribe()
    // });

    // this.events.subscribe("message:sent" , (messageDetails , receiverDeatils) => {

    // });
  }

  startChat(Id) {
    this.navCtrl.push("DhnChatPage", {
      "MessagingParams": { "UserName": "AlameerAshraf", "Id": Id }
    });
  }

}
