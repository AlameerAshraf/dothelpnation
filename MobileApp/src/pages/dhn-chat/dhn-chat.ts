import { IonicPage, App , NavController, NavParams, ToastController, IonicApp, Content } from 'ionic-angular';
import { Component, OnInit, ViewChild } from '@angular/core';
import { Storage } from '@ionic/storage';
import { Events } from 'ionic-angular';
import { Url } from './../../CoreAssestiveModules/Url';
import { DataService } from '../../CoreAssestiveModules/Services/DataService';
import { LoadingService } from '../../CoreAssestiveModules/Services/LoadingService';


@IonicPage()
@Component({
  selector: 'page-dhn-chat',
  templateUrl: 'dhn-chat.html',
})
export class DhnChatPage implements OnInit {

  @ViewChild(Content) content: Content;

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
    // private network: Network,
    public events: Events,
    public navCtrl: NavController,
    private storage: Storage,
    private DataService: DataService,
    private loading: LoadingService,
    private toast: ToastController,
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
    });

    // chat list .. 
    this.chats = [];
  }


  ionViewWillEnter() {
    if (!this.middleTextShow) {
      this.loading.show("Loading chat");
    }

    let DataRequest = this.DataService.Get(`${Url.ApiUrlLocalTunnul()}/GetUserChat?email=${this.logginedUserEmail}&target_id=${this.currentUserId}`, null, this.access_token)
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
    var newChat = {
      userId: '',
      sendDate: new Date().toISOString().split('T')[0],
      time : new Date().toLocaleString('en-US', { hour: 'numeric', minute: 'numeric', hour12: true }),
      message: this.newMessage,
      showMessage: true,
      senderEmail: this.logginedUserEmail,
      receiverId: this.currentUserId
    }
    this.chats.push(newChat);
    this.newMessage = "";

    // scroll content down 
    this.content.scrollToBottom();

    this.events.publish('message:sent' , newChat );
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad DhnChatPage');
  }

}
