import { Component, OnDestroy } from '@angular/core';
import { IonicPage, NavController, NavParams, MenuController } from 'ionic-angular';
import { TranslateService } from '@ngx-translate/core';

import { BlogsRoot , SettingsRoot , ProfileRoot , MessagesRoot } from './../index';
import { Events } from 'ionic-angular';
@IonicPage()
@Component({
  selector: 'page-dhn-home-tabs',
  templateUrl: 'dhn-home-tabs.html',
})
export class DhnHomeTabsPage implements OnDestroy  {


  _BlogsRoot: any = BlogsRoot;
  _MessagesRoot: any = MessagesRoot;
  _SettingsRoot: any = SettingsRoot;
  _ProfileRoot: any = ProfileRoot;


  BlogsTablabel: string = "";
  MessagesTablabel: string = "";
  ProfileTablabel: string = "";
  SettingsTablabel: string = "";

  ionViewDidEnter() {
    this.menu.enable(false);
  }

  constructor(public navCtrl: NavController,
    public menu: MenuController,
    private events: Events,
    public navParams: NavParams ,
    private translate: TranslateService) {
      this.translate.get([
        'BLOGS_TAB' , 'MESSAGES_TAB' , 'PROFILE_TAB' , 'SETTINGS_TAB'
      ]).subscribe((values) => {
        this.BlogsTablabel = values.BLOGS_TAB;
        this.MessagesTablabel = values.MESSAGES_TAB;
        this.ProfileTablabel = values.PROFILE_TAB;
        this.SettingsTablabel = values.SETTINGS_TAB;
      })

      events.subscribe('logout:clicked', () => {
        this.navCtrl.setRoot('DhnLoginPage');
      });
  }

  ngOnDestroy(): void {
    this.events.unsubscribe('logout:clicked');
  }


  ionViewDidLoad() {
    console.log('ionViewDidLoad DhnHomeTabsPage');
  }

  onTabGotClosed(df){
    console.log("Assssssss*****")
  }


}
