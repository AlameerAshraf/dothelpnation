import { IonicPage, NavController, NavParams, MenuController, Platform, Events } from 'ionic-angular';

import { TranslateService } from '@ngx-translate/core';
import { Component, OnDestroy } from '@angular/core';

import { BlogsRoot, SettingsRoot, ProfileRoot, MessagesRoot } from './../index';

import { Keyboard } from '@ionic-native/keyboard';
import { Storage } from '@ionic/storage';


@IonicPage()
@Component({
  selector: 'page-dhn-home-tabs',
  templateUrl: 'dhn-home-tabs.html',
})
export class DhnHomeTabsPage implements OnDestroy {


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

  ionViewDidEnter() {
    this.menu.enable(true);
  }

  constructor(public navCtrl: NavController,
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

    var UserData = navParams.get('data');
    events.publish('user:logined', UserData);

    this.Storage.get("access_token").then(SECURITY_DATA => {
      this.access_token = SECURITY_DATA.access_token;
    });

    this.Storage.get("Profile_Data").then(PROFILE_DATA => {
      this.logginedUserEmail = PROFILE_DATA.email;
    });

  }

  ngOnDestroy(): void {
    this.events.unsubscribe('logout:clicked');
  }


  ionViewDidLoad() {
    console.log('ionViewDidLoad DhnHomeTabsPage');
  }



}
