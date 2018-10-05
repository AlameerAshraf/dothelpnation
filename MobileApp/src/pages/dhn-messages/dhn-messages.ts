import { Storage } from '@ionic/storage';
import { Component, OnInit } from '@angular/core';
import { Events, ToastController } from 'ionic-angular';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { SignalR, SignalRConnection, ConnectionStatus, BroadcastEventListener } from 'ng2-signalr';
import { LocalNotifications } from '@ionic-native/local-notifications';
import * as _ from 'lodash';


import { Url } from '../../CoreAssestiveModules/Url';
import { LoadingService } from '../../CoreAssestiveModules/Services/LoadingService';
import { DataService } from './../../CoreAssestiveModules/Services/DataService';



@IonicPage()
@Component({
  selector: 'page-dhn-messages',
  templateUrl: 'dhn-messages.html',
})
export class DhnMessagesPage  {
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
    private toast: ToastController,
    private localNotifications : LocalNotifications,
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
      let unreadMessagesCounter = 0 ;
      data.forEach(element => {
        element.sortDate = new Date(`${element.date.split('T')[0]} ${element.time}`);
        if (element.destination_user_photo == null) {
          element.destination_user_photo = "assets/img/avatar2.png";
        }
        if(element.source == "from" && element.stuts == 1){ // unread messages found 
          element.time = "🔔" + element.time;
          element.unreadmessages = true;
          unreadMessagesCounter += 1;
        }
      });
      
      this.events.publish("tab:changed:messagesCount" , unreadMessagesCounter , "set");

      this.loading.hide();
      this.userChats = data;
    })
  }

  ionViewDidLoad(): void {
    this._signalR.connect().then((c) => {
      console.log(c);
      this.events.subscribe("message:sent", (messageDetails) => {
        // Send messages ..
        c.invoke("sendMessage", messageDetails);
      });

      //  1.create a listener object
      let onMessageReceived$ = new BroadcastEventListener<any>('receiveMessage')
      // 2.register the listener
      c.listen(onMessageReceived$);
      // 3.subscribe for incoming messages
      onMessageReceived$.subscribe((chatMessage) => {
        var destinationData = null;
        destinationData = this.userChats.find(x => x.destination_user_id == chatMessage.from_user_id);

        if (destinationData != null) {
          // Bind last message on messages list 
          destinationData.message = chatMessage.message;
          destinationData.time = "🔔" + chatMessage.time;
          destinationData.sortDate = new Date(`${chatMessage.date.split('T')[0]} ${chatMessage.time}`);
          destinationData.unreadmessages = true;

          this.events.publish("tab:changed:messagesCount" , 1 , "increase");
          this.userChats = _.orderBy(this.userChats, ['sortDate'], ['desc']);
        } else {
          let newArrivedMessage = {
            destination_user_id : chatMessage.from_user_id,
            destination_user_name : chatMessage.senderName ,
            destination_user_email : chatMessage.senderEmail ,
            destination_user_photo : chatMessage.senderPhoto ,
            time : "🔔" + chatMessage.time ,
            date : chatMessage.date ,
            message : chatMessage.message,
            ad_id : chatMessage.ad_id,
            sortDate : new Date(),
            unreadmessages : true
          };
          
          this.events.publish("tab:changed:messagesCount" , 1 , "increase");
          newArrivedMessage.sortDate = new Date(`${chatMessage.date.split('T')[0]} ${chatMessage.time}`);
          this.userChats.push(newArrivedMessage);

          this.userChats = _.orderBy(this.userChats, ['sortDate'], ['desc']);
        }
        
        // publish event to the chat page 
        this.events.publish("message:received" , chatMessage);

        // Notify 
        // this.localNotifications.schedule({
        //   title: chatMessage.senderName + " " + "sent you a message",
        //   text:  chatMessage.message,
        // });

      });
    });
  }

  startChat(Id) {
    var destinationData = this.userChats.find(x => x.destination_user_id == Id);
    this.navCtrl.push("DhnChatPage", {
      "MessagingParams": destinationData,
      "IsTextInitializer": { textShow: false }
    });
  }

}
