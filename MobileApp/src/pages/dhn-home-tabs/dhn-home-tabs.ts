import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { TranslateService } from '@ngx-translate/core';

import { BlogsRoot , SettingsRoot , ProfileRoot , MessagesRoot } from './../index';

@IonicPage()
@Component({
  selector: 'page-dhn-home-tabs',
  templateUrl: 'dhn-home-tabs.html',
})
export class DhnHomeTabsPage {


  _BlogsRoot: any = BlogsRoot;
  _MessagesRoot: any = MessagesRoot;
  _SettingsRoot: any = SettingsRoot;
  _ProfileRoot: any = ProfileRoot;


  BlogsTablabel: string = "";
  MessagesTablabel: string = "";
  ProfileTablabel: string = "";
  SettingsTablabel: string = "";

  constructor(public navCtrl: NavController,
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
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad DhnHomeTabsPage');
  }


}
