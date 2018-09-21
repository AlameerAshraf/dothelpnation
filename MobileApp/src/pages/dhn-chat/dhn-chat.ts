import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { Component, OnInit } from '@angular/core';
import { Storage } from '@ionic/storage';
import { Url } from './../../CoreAssestiveModules/Url';
import { DataService } from '../../CoreAssestiveModules/Services/DataService';
import { LoadingService } from '../../CoreAssestiveModules/Services/LoadingService';


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
  logginedUserEmail;
  access_token;
  middleTextShow = false;


  // Current Sent message from user 
  newMessage: string;

  // SignalR


  constructor(
    public navCtrl: NavController,
    private storage: Storage,
    private DataService: DataService,
    private loading : LoadingService,
    public navParams: NavParams) {
    let chatParamters = navParams.get("MessagingParams");
    let IsTextInitializer = navParams.get("IsTextInitializer");
    this.currentUserId = chatParamters.destination_user_id;
    this.currentUserName = chatParamters.destination_user_name;
    this.currentEmail = chatParamters.destination_user_email;
    this.middleTextShow = IsTextInitializer.textShow;
    // this.currentPhotoUrl = chatParamters.destination_user_photo;


    this.storage.get("Profile_Data").then(PROFILE_DATA => {
      this.logginedUserEmail = PROFILE_DATA.email;
    });

    this.storage.get('access_token').then((SECURITY_DATA) => {
      this.access_token = SECURITY_DATA.access_token;
    })

    // chat list .. 
    this.chats = [
      // { userId: '22', sendDate: new Date(), message: '3am elnas !', showMessage: "false", userName: "Ahmed Elmasry" },
      // { userId: '33', sendDate: new Date(), message: 'shaba7 elsenin !', showMessage: "false", userName: "AlameerAshraf" },
    ];
  }


  ionViewWillEnter(){
    this.loading.show("Loading chat");
    let DataRequest = this.DataService.Get(`${Url.ApiUrlLocalTunnul()}/GetUserChat?email=${this.logginedUserEmail}&target_id=${this.currentUserId}`,null , this.access_token)
    .subscribe((chats) => {
      chats.forEach(element => {
        element.sendDate = element.sendDate.split('T')[0];
      });
      this.loading.hide();
      this.chats = chats;
    });
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
