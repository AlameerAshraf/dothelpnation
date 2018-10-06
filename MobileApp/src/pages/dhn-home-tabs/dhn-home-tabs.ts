import { IonicPage, NavController, NavParams, MenuController, Platform, Events, Tabs } from 'ionic-angular';

import { TranslateService } from '@ngx-translate/core';
import { Component, OnDestroy, ViewChild } from '@angular/core';

import { BlogsRoot, SettingsRoot, ProfileRoot, MessagesRoot } from './../index';

import { Keyboard } from '@ionic-native/keyboard';
import { Storage } from '@ionic/storage';
import { Badge } from '@ionic-native/badge';

import { DataService } from '../../CoreAssestiveModules/Services/DataService';
import { Url } from '../../CoreAssestiveModules/Url';


@IonicPage()
@Component({
  selector: 'page-dhn-home-tabs',
  templateUrl: 'dhn-home-tabs.html',
})
export class DhnHomeTabsPage implements OnDestroy {

  @ViewChild("tabs") mianTabs: Tabs;

  _BlogsRoot: any = BlogsRoot;
  _MessagesRoot: any = MessagesRoot;
  _SettingsRoot: any = SettingsRoot;
  _ProfileRoot: any = ProfileRoot;


  BlogsTablabel: string = "";
  MessagesTablabel: string = "";
  ProfileTablabel: string = "";
  SettingsTablabel: string = "";
  access_token: any;
  logginedUserEmail: any;
  messagesCount: any;

  ionViewDidEnter() {
    this.menu.enable(true);
  }

  constructor(public navCtrl: NavController,
    private badge: Badge,
    private DataService: DataService,
    private Storage: Storage,
    private platform: Platform,
    public menu: MenuController,
    private events: Events,
    public navParams: NavParams,
    private keyboard: Keyboard,
    private translate: TranslateService) {

    this.platform.ready().then(() => {
      this.keyboard.onKeyboardShow().subscribe(() => {
        document.body.classList.add('keyboard-is-open');
      });

      this.keyboard.onKeyboardHide().subscribe(() => {
        document.body.classList.remove('keyboard-is-open');
      });
    });

    this.translate.get([
      'BLOGS_TAB', 'MESSAGES_TAB', 'PROFILE_TAB', 'SETTINGS_TAB'
    ]).subscribe((values) => {
      this.BlogsTablabel = values.BLOGS_TAB;
      this.MessagesTablabel = values.MESSAGES_TAB;
      this.ProfileTablabel = values.PROFILE_TAB;
      this.SettingsTablabel = values.SETTINGS_TAB;
    })

    events.subscribe('logout:clicked', () => {
      this.navCtrl.setRoot('DhnLoginPage');
    });

    this.events.subscribe("tab:chnaged:messages" , (flag) => {
      if(flag)
        this.mianTabs.select(1);
    });

    this.events.subscribe("tab:changed:messagesCount" , (messagesCount , operation) => {
      if(operation == "increase"){
        this.increaseCounter(messagesCount);
      } else if (operation == "set"){
        this.setCounter(messagesCount);
      }
    });

    var UserData = navParams.get('data');
    events.publish('user:logined', UserData);

    this.Storage.get("access_token").then(SECURITY_DATA => {
      this.access_token = SECURITY_DATA.access_token;
    });

    this.Storage.get("Profile_Data").then(PROFILE_DATA => {
      this.logginedUserEmail = PROFILE_DATA.email;
      let DataRequest = this.DataService.Get(`${Url.ApiUrlLocalTunnul()}/GetUnreadChatsNumber?email=${this.logginedUserEmail}`, null, this.access_token).subscribe((numberOfChats) => {
        if(numberOfChats != 0){
          this.messagesCount = numberOfChats;
          this.badge.set(numberOfChats);
        } else {
          this.messagesCount = "";
          this.badge.clear();
        }
      });
    });



  }

  ngOnDestroy(): void {
    this.events.unsubscribe('logout:clicked');
  }


  ionViewDidLoad() {
  
  }


  // Increase Counter 
  increaseCounter(increaseBy){
    if(this.messagesCount == 0 || this.messagesCount == null){
      let newMessageCounts = increaseBy;
      this.messagesCount = newMessageCounts;
      this.badge.set(newMessageCounts);
    } else {
      this.messagesCount += 1;
      this.badge.set(this.messagesCount);
    }
  }


  // Set messages counters 
  setCounter(counter){
    if(counter == 0){
      this.messagesCount = "";
      this.badge.clear();
    } else {
      this.messagesCount = counter;
      this.badge.set(counter);
    }
  }



}
