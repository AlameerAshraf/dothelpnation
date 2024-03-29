import {
  IonicPage,
  App,
  NavController,
  NavParams,
  ToastController,
  IonicApp
} from "ionic-angular";
import { Content } from "ionic-angular/index";
import { Component, OnInit, ViewChild } from "@angular/core";
import { Storage } from "@ionic/storage";
import { Events } from "ionic-angular";
import { LocalNotifications } from "@ionic-native/local-notifications";

import { Url } from "./../../CoreAssestiveModules/Url";
import { DataService } from "../../CoreAssestiveModules/Services/DataService";
import { LoadingService } from "../../CoreAssestiveModules/Services/LoadingService";

@IonicPage()
@Component({
  selector: "page-dhn-chat",
  templateUrl: "dhn-chat.html"
})
export class DhnChatPage {
  @ViewChild("content")
  content: Content;

  currentUserName;
  currentUserId;
  currentEmail;
  currentPhotoUrl;
  chats: any[];
  logginedUserEmail;
  access_token;
  ad_id;
  middleTextShowInitially = false;
  middleTextShowChatsLoaded = true;

  // Current Sent message from user
  newMessage: string;
  unreadFlag: any;

  // SignalR

  constructor(
    // private network: Network,
    public events: Events,
    public navCtrl: NavController,
    private storage: Storage,
    private DataService: DataService,
    private loading: LoadingService,
    private toast: ToastController,
    private localNotifications: LocalNotifications,
    public navParams: NavParams
  ) {
    let chatParamters = navParams.get("MessagingParams");
    let IsTextInitializer = navParams.get("IsTextInitializer");
    this.currentUserId = chatParamters.destination_user_id;
    this.currentUserName = chatParamters.destination_user_name;
    this.currentEmail = chatParamters.destination_user_email;
    this.ad_id = chatParamters.ad_id;
    this.middleTextShowInitially = IsTextInitializer.textShow;
    this.unreadFlag = chatParamters.unreadmessages;
    // this.currentPhotoUrl = chatParamters.destination_user_photo;

    this.storage.get("Profile_Data").then(PROFILE_DATA => {
      this.logginedUserEmail = PROFILE_DATA.email;
    });

    this.storage.get("access_token").then(SECURITY_DATA => {
      this.access_token = SECURITY_DATA.access_token;
    });



    // chat list ..
    this.chats = [];
  }

  ionViewDidEnter() {
    // if (!this.middleTextShowInitially) {
    //   this.loading.show("Loading chat");
    // }

    if (this.unreadFlag) {
      this.DataService.Get(`${Url.ApiUrlLocalTunnul()}/SetMesssagesAsRead?email=${this.logginedUserEmail}&from_user_id=${this.currentUserId}`,
        null, this.access_token).subscribe();
    }

    let DataRequest = this.DataService.Get(
      `${Url.ApiUrlLocalTunnul()}/GetUserChat?email=${this.logginedUserEmail}&target_id=${this.currentUserId}`,
      null,
      this.access_token).subscribe(chats => {
        chats.forEach(element => {
          element.sendDate = element.sendDate.split("T")[0];
        });
        // this.loading.hide();
        this.chats = chats;

        this.middleTextShowInitially = this.chats.length > 0 ? false : true;

        setTimeout(() => {
          this.content.scrollToBottom(300);
        }, 200);
      });

    this.events.subscribe("message:received", receivedMessage => {
      this.chats.push(receivedMessage);

      // Notify
      // this.localNotifications.schedule({
      //   title: this.currentUserName + " " + "sent you a message",
      //   text: receivedMessage.message
      // });

      if (this.content != null) {
        setTimeout(() => {
          this.content.scrollToBottom(300);
        }, 200);
      }
    });
  }

  sendMessage() {
    this.middleTextShowChatsLoaded = false;
    this.middleTextShowInitially = false;

    var newChat = {
      userId: "",
      sendDate: new Date().toISOString().split("T")[0],
      time: this.formatAMPM(new Date()).view,
      _time: this.formatAMPM(new Date()).server,
      message: this.newMessage,
      showMessage: true,
      senderEmail: this.logginedUserEmail,
      receiverId: this.currentUserId,
      ad_id: this.ad_id
    };
    this.chats.push(newChat);
    this.newMessage = "";

    // scroll content down
    this.content.scrollToBottom(0);

    //this.events.publish("message:sent", newChat);
    console.log(this.access_token)
    
    this.DataService.Post(`${Url.ApiUrlLocalTunnul()}/SendMessages`, this.access_token , null , newChat).subscribe();
  }

  formatAMPM(date) {
          var hours = date.getHours();
          var minutes = date.getMinutes();
          var seconds = date.getSeconds();
          var ampm = hours >= 12 ? "PM" : "AM";
          hours = hours % 12;
          hours = hours ? hours : 12; // the hour '0' should be '12'
          hours = hours < 10 ? "0" + hours : hours;
          minutes = minutes < 10 ? "0" + minutes : minutes;
          seconds = seconds < 10 ? "0" + seconds : seconds;
          var serverDate = hours + ":" + minutes + ":" + seconds + " " + ampm;
          var viewDate = hours + ":" + minutes + " " + ampm;
          return { server: serverDate, view: viewDate };
        }
}
