import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams, ModalController, ViewController } from 'ionic-angular';
import { FormGroup } from '@angular/forms';
import { DataService } from '../../CoreAssestiveModules/Services/DataService';
import { Storage } from '@ionic/storage';
import { Url } from '../../CoreAssestiveModules/Url';

@IonicPage()
@Component({
  selector: 'page-dhn-blog-filter',
  templateUrl: 'dhn-blog-filter.html',
})
export class DhnBlogFilterPage {

  access_token;
  blogSections;
  MainCities;
  places;

  constructor(public navCtrl: NavController, 
    private viewCtrl : ViewController,
    private DataService: DataService,
    public navParams: NavParams,
    private storage: Storage,
    public modalCtrl: ModalController) {
    this.storage.get('access_token').then((SECURITY_DATA) => {
      this.access_token = SECURITY_DATA.access_token;
    })

    this.DataService.Get(`${Url.ApiUrlLocalTunnul()}/GetListOfBlogSections?site_lang=en`, null, this.access_token).subscribe((data) => {
      console.log(data)
      this.blogSections = data;
    });

    this.DataService.Get(`${Url.ApiUrlLocalTunnul()}/GetListOfMainCities`, null, this.access_token).subscribe((data) => {
      console.log(data)

      this.MainCities = data;
    });

    this.DataService.Get(`${Url.ApiUrlLocalTunnul()}/GetListOfSubCities?MohafzaId=`, null, this.access_token).subscribe((data) => {
      console.log(data)

      this.places = data;
    });
  }

  ionViewWillEnter(){
  
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad DhnBlogFilterPage');
  }

  cancel(){
    this.viewCtrl.dismiss();
  }

  filter(){
    this.viewCtrl.dismiss({"a7a" : "a7a"});
  }

}
