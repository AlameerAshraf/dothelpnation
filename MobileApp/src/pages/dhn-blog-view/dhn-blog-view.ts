import { Component, ViewChild } from '@angular/core';
import { IonicPage, NavController, NavParams, Content, ActionSheetController } from 'ionic-angular';

@IonicPage()
@Component({
  selector: 'page-dhn-blog-view',
  templateUrl: 'dhn-blog-view.html',
})
export class DhnBlogViewPage {

  // Map related decs ..
  blogId ;
  map;

  data
  active: boolean =  false

  constructor(private navCtrl: NavController ,
    private navParams: NavParams,
    private actionSheet: ActionSheetController) {
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
  }


  // Show Action sheet for blog options 
  presentBlogOptionsActionSheet(){
    let blogOptions = this.actionSheet.create({
      title : "Options",
      buttons : [
        {
          text : 'Share in Facebook',
          handler : () => {
            console.log("FaceBook")
          }
        },
        {
          text : 'Sahre in Twitter' ,
          handler : () => {
            console.log("Twitter")
          }
        } ,
        {
          text : "Message blog publisher",
          handler : () => {
            console.log("Message")
          }
        } ,
        {
          text : "Report",
          role : "destructive" , 
          handler : () => {
            console.log("report")
          }
        } ,
        {
          text : "Cancel" ,
          role : "cancel" ,
          handler : () => {
            console.log("cancel");
          }
        }
      ]
    });

    blogOptions.present();
  }


}
