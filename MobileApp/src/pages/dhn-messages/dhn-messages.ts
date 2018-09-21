import { Storage } from '@ionic/storage';
import { Component, OnInit } from '@angular/core';
import { Events } from 'ionic-angular';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { SignalR, SignalRConnection, ConnectionStatus } from 'ng2-signalr';
import { Url } from '../../CoreAssestiveModules/Url';
import { LoadingService } from '../../CoreAssestiveModules/Services/LoadingService';
import { DataService } from './../../CoreAssestiveModules/Services/DataService';



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
    private loading: LoadingService,
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
    this.loading.show("Loading messages");

    this.DataService.Get(`${Url.ApiUrlLocalTunnul()}/GetChatList?email=${this.logginedUserEmail}`, null, this.access_token).subscribe((data) => {
      data.forEach(element => {
        if (element.destination_user_photo == null) {
          element.destination_user_photo = "assets/img/avatar2.png";
        }
      });

      this.loading.hide();
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
    var destinationData = this.userChats.find( x => x.destination_user_id == Id);
    this.navCtrl.push("DhnChatPage", {
      "MessagingParams": destinationData ,
      "IsTextInitializer" : {textShow : false}
    });
  }

}
