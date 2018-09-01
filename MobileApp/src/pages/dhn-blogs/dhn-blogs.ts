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
    this.Blogs = [
      {
        "id": 1,
        "title": "Green Cactus",
        "subtitle": "Family: Cactaceae",
        "description": "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock",
        "image": "assets/img/8.jpg",
        "button": "$14.90",
        "shareIcon": "more",
        "date": new Date('2018-07-10 08:31:27 PM')
      },
    ]
    let DataRequest = this.DataService.Get(`${Url.ApiUrlLocalTunnul()}/GetBlogs`, null, this.access_token).subscribe((data) => {

      console.log(this.createFormatedDate('2018-07-10T00:00:00','08-31-27-PM'))
    });
  }


  createFormatedDate(date , time){
    var originalTime = "08-31-27-PM"
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

  }

  AddBlogToServer(Blog_Item){
    console.log(Blog_Item);
  }

}
