import { TranslateService } from '@ngx-translate/core';
import { Component } from '@angular/core';
import { Storage } from '@ionic/storage';
import { IonicPage, NavController, NavParams, Events } from 'ionic-angular';

@IonicPage()
@Component({
  selector: 'page-dhn-profile',
  templateUrl: 'dhn-profile.html',
})
export class DhnProfilePage {

  CurrentUserProfileData: any;
  dir: string;
  data = {
    HeaderLabel : "" ,
    Username_profile : "" ,
    Email_profile : "",
    Age_profile : "",
    phone_profile : ""
  }

  constructor(public navCtrl: NavController, 
    public navParams: NavParams,
    private translate : TranslateService,
    private storage: Storage,
    private events: Events) {
      this.storage.get('Profile_Data').then((Profile_Data) => {
        if(Profile_Data.photo == null){
          Profile_Data.photo = "assets/img/avatar2.png";
        }
        this.CurrentUserProfileData = Profile_Data;
        console.log(Profile_Data);
      });


      
    this.storage.get("UserSettings").then(settings => {
      this.dir = settings.def_lang == "ar" ? "rtl" : "ltr";
    });

    this.translate.get([
      'USERNAME_LABEL' ,
      'AGE_LABEL' ,
      'EMAIL_LABEL',
      'PHONE_LABEL',
      'PROFILE_TAB'
    ]).subscribe((values) => {
      this.data.HeaderLabel = values.PROFILE_TAB;
      this.data.Age_profile = values.AGE_LABEL;
      this.data.Email_profile = values.EMAIL_LABEL;
      this.data.phone_profile = values.PHONE_LABEL;
      this.data.Username_profile = values.USERNAME_LABEL;
    })


  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad DhnProfilePage');
  }

}
