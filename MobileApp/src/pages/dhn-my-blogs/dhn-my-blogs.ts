import { Storage } from '@ionic/storage';
import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { SpinnerDialog } from '@ionic-native/spinner-dialog';
import { Url } from '../../CoreAssestiveModules/Url';
import { DataService } from '../../CoreAssestiveModules/Services/DataService';

@IonicPage()
@Component({
  selector: 'page-dhn-my-blogs',
  templateUrl: 'dhn-my-blogs.html',
})
export class DhnMyBlogsPage {
  dir: string;
  access_token: any;
  logginedUserEmail: any;
  blogs;

  constructor(
    public navCtrl: NavController, 
    public navParams: NavParams,
    private SpinnerDialog: SpinnerDialog,
    private DataService: DataService,
    private storage: Storage,
  ) {

    this.storage.get("UserSettings").then(settings => {
      this.dir = settings.def_lang == "ar" ? "rtl" : "ltr";
    });

    this.storage.get('access_token').then((SECURITY_DATA) => {
      this.access_token = SECURITY_DATA.access_token;
    });

    this.storage.get("Profile_Data").then(PROFILE_DATA => {
      this.logginedUserEmail = PROFILE_DATA.email;
    });

  }


  ionViewWillEnter() {
    this.SpinnerDialog.show();
    this.DataService.Get(`${Url.ApiUrlLocalTunnul()}/GetOldPosts?email=${this.logginedUserEmail}`, null, this.access_token).subscribe((data) => {
      this.SpinnerDialog.hide();
      data.forEach(element => {
        element.date = this.createFormatedDate(element.publish_date, element.time)
      });

      this.blogs = data;
    })
  }


  createFormatedDate(date, time) {
    var originalTime = time
    var formattedTime = originalTime.replace(/-/g, ":");

    var timebody = formattedTime.substring(0, formattedTime.length - 3);
    var finalDate = date.split('T')[0];

    var notificationFomrattedDate = `${finalDate}`;
    return notificationFomrattedDate;
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad DhnMyBlogsPage');
  }

}
