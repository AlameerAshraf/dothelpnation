import { Component, ViewChild } from '@angular/core';
import { IonicPage, NavController, NavParams, Content, ActionSheetController } from 'ionic-angular';
import { SocialSharing } from '@ionic-native/social-sharing';



@IonicPage()
@Component({
  selector: 'page-dhn-blog-view',
  templateUrl: 'dhn-blog-view.html',
})
export class DhnBlogViewPage {

  ratingStars;
  sharingMessageStamp: string = `#dothelpnation #help #attention`;
  sectionName;
  blogId;
  map;

  data
  active: boolean = false

  constructor(private navCtrl: NavController,
    private navParams: NavParams,
    private socialSharing: SocialSharing,
    private actionSheet: ActionSheetController
  ) {
    let BlogData = this.navParams.get("blogData");
    this.data = BlogData;
    this.data.shareIcon = "more"
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
  };


  onStarClass(index: number, e: any) {
    console.log(this.ratingStars)

    for (var i = 0; i < this.ratingStars.length; i++) {
      this.ratingStars[i].isActive = i <= index;
    }
    console.log(this.ratingStars)
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

  }



}
