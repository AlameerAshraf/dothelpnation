import { DataService } from './../../CoreAssestiveModules/Services/DataService';
import { Component, ViewChild } from '@angular/core';
import { IonicPage, NavController, NavParams, Content, ActionSheetController, ToastController } from 'ionic-angular';
import { SocialSharing } from '@ionic-native/social-sharing';
import { Storage } from "@ionic/storage";
import { Url } from '../../CoreAssestiveModules/Url';
import { TranslateService } from '@ngx-translate/core';



@IonicPage()
@Component({
  selector: 'page-dhn-blog-view',
  templateUrl: 'dhn-blog-view.html',
})
export class DhnBlogViewPage {

  ratingStars;
  sharingMessageStamp: string = `#dothelpnation #help #attention`;
  logginedUserEmail;
  sectionName;
  blogId;
  map;

  data
  active: boolean = false
  MessagePublisherLabel: any;

  constructor(private navCtrl: NavController,
    private navParams: NavParams,
    private socialSharing: SocialSharing,
    private storage: Storage,
    private actionSheet: ActionSheetController,
    private DataService: DataService,
    private translate: TranslateService,
    private toast : ToastController
  ) {

    this.storage.get("Profile_Data").then(PROFILE_DATA => {
      this.logginedUserEmail = PROFILE_DATA.email;
    });


    this.translate.get(["MESSAGE_PUBLISHER_BTN_LABEL"]).subscribe(values => {
      this.MessagePublisherLabel = values.MESSAGE_PUBLISHER_BTN_LABEL
    })


    let BlogData = this.navParams.get("blogData");
    this.data = BlogData;
    this.data.shareIcon = "md-share-alt"
    this.map = {
      "map": {
        "lat": this.data.map_latitude != null ? parseFloat(this.data.map_latitude) : 0,
        "lng": this.data.map_latitude != null ? parseFloat(this.data.map_longitude) : 0,
        "zoom": 30,
        "mapTypeControl": true,
        "streetViewControl": true
      }
    }
    this.blogId = this.data.id;
    this.sectionName = this.data.section_name;
    this.ratingStars = [
      {
        "isActive": true,
        "iconActive": "icon-star",
        "iconInactive": "icon-star-outline"
      },
      {
        "isActive": true,
        "iconActive": "icon-star",
        "iconInactive": "icon-star-outline"
      },
      {
        "isActive": true,
        "iconActive": "icon-star",
        "iconInactive": "icon-star-outline"
      },
      {
        "isActive": true,
        "iconActive": "icon-star",
        "iconInactive": "icon-star-outline"
      },
      {
        "isActive": true,
        "iconActive": "icon-star",
        "iconInactive": "icon-star-outline"
      },
    ]

    this.onStarClass(this.data.stars , "bind");
  };


  onStarClass(index: number, e: any) {
    for (var i = 0; i < this.ratingStars.length; i++) {
      this.ratingStars[i].isActive = i <= index;
    }

    if(e === 'rate'){
      console.log(index , this.logginedUserEmail , this.blogId);
      this.DataService.Get(`${Url.ApiUrlLocalTunnul()}/RateBlog?blogId=${this.blogId}&email=${this.logginedUserEmail}&stars=${index+1}`)
      .subscribe((x) => {
        if(x){
          let toaster = this.toast.create({message : "Blog rated successfully" , duration : 2000});
          toaster.present();
        } else {
          let toaster = this.toast.create({message : "Something went wrong" , duration : 2000});
          toaster.present();
        }
      })
    }
  };



  // Share on Facebook 
  socialSharingLauncher() {
    let message = `${this.sharingMessageStamp} #${this.sectionName} \n ${this.data.title} \n  ${this.data.content}`;
    this.socialSharing.share(message, "#dothelpnationApp", this.data.photo, this.data.url)
      .then((valuesReturned) => {
        console.log("shared", valuesReturned);
      })
      .catch((err) => {
        console.log("err", err);
      });
  }



  // message blog poster 
  messagePoster() {
    var MessagingParamsdata = {
      destination_user_id : this.data.user_id ,
      destination_user_name : this.data.user_name,
      destination_user_email : this.data.user_email, 
      ad_id :this.data.id
    }
    this.navCtrl.push("DhnChatPage", {
      "MessagingParams": MessagingParamsdata,
      "IsTextInitializer" : {textShow : true}
    });
  }



}
