import { Url } from './../../CoreAssestiveModules/Url';
import { DataService } from './../../CoreAssestiveModules/Services/DataService';
import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams, ModalController } from 'ionic-angular';
import { LoadingService } from '../../CoreAssestiveModules/Services/LoadingService';
import { Storage } from '@ionic/storage';

 
@IonicPage()
@Component({
  selector: 'page-dhn-blogs',
  templateUrl: 'dhn-blogs.html',
})
export class DhnBlogsPage {



  Blogs = null;
  access_token: string;

  constructor(public navCtrl: NavController, 
    private DataService: DataService,
    public navParams: NavParams,
    private storage: Storage,
    public modalCtrl: ModalController,
    private LoadingService: LoadingService) {
      
      this.storage.get('access_token').then((SECURITY_DATA) => {
        this.access_token = SECURITY_DATA.access_token;
      })
  }

  ionViewWillEnter() {
    let DataRequest = this.DataService.Get(`${Url.ApiUrlLocalTunnul()}/GetBlogs`, null, this.access_token).subscribe((data) => {
      data.forEach(element => {
        element.date = this.createFormatedDate(element.publish_date , element.time);
        element.shareIcon = "more"
        // element.alt = "assets/img/dothelpnation.jpg";
      });

      this.Blogs = data;
    });
  }


  createFormatedDate(date , time){
    var originalTime = time
    var formattedTime = originalTime.replace(/-/g , ":");

    var timebody = formattedTime.substring(0, formattedTime.length - 3);

    var AM_PM = originalTime.substring(originalTime.length -2, originalTime.length)
    var finalTime = `${timebody} ${AM_PM}`; 

    var finalDate = date.split('T')[0];

    var notificationFomrattedDate = `${finalDate} ${finalTime}`;
    return notificationFomrattedDate;
  }

  // Add new Item 
  openBlogAddItem() {
    let addModal = this.modalCtrl.create('DhnBlogCraetePage');
    addModal.present();

    addModal.onDidDismiss(item => {
      if (item) {
        this.AddBlogToServer(item);
      }
    })
  }


  //Filter advertiesmsnets 
  filter(){
    let filterModal = this.modalCtrl.create('DhnBlogFilterPage');
    filterModal.present();

    filterModal.onDidDismiss(item => {
      console.log(item);
    })
  }

  AddBlogToServer(Blog_Item){
    console.log(Blog_Item);
  }

}
