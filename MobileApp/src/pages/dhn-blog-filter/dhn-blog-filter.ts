import { WheelSelector } from '@ionic-native/wheel-selector';
import { Component } from '@angular/core';
import { FormGroup } from '@angular/forms';
import { Storage } from '@ionic/storage';

import { IonicPage, NavController, NavParams, ModalController, ViewController, ToastController } from 'ionic-angular';
import { DataService } from '../../CoreAssestiveModules/Services/DataService';
import { Url } from '../../CoreAssestiveModules/Url';

@IonicPage()
@Component({
  selector: 'page-dhn-blog-filter',
  templateUrl: 'dhn-blog-filter.html',
})
export class DhnBlogFilterPage {

  access_token;
  blogSections;
  BlogType = "Select blog ..";
  MainCities;
  City = "Select city ..";
  places;
  Place = "Select place ..";

  BlogFilter = `?BlogFilter=`;
  CityFilter = `&CityFilter=`;
  PlaceFilter = `&PlaceFilter=`;
  SearchFilter = `&SearchFilter=`;

  constructor(public navCtrl: NavController, 
    private WheelSelector : WheelSelector,
    private viewCtrl : ViewController,
    private DataService: DataService,
    public navParams: NavParams,
    private storage: Storage,
    private toast: ToastController,
    public modalCtrl: ModalController) {
    this.storage.get('access_token').then((SECURITY_DATA) => {
      this.access_token = SECURITY_DATA.access_token;
    })

    this.DataService.Get(`${Url.ApiUrlLocalTunnul()}/GetListOfBlogSections?site_lang=en`, null, this.access_token).subscribe((data) => {
      this.blogSections = data;
    });

    this.DataService.Get(`${Url.ApiUrlLocalTunnul()}/GetListOfMainCities`, null, this.access_token).subscribe((data) => {
      this.MainCities = data;
    });
  }

  ionViewWillEnter(){
  
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad DhnBlogFilterPage');
  }

  onblogSections(){
    this.WheelSelector.show({
      title: 'Select blog type',
      items: [
        this.blogSections
      ],
      positiveButtonText: 'Choose',
      negativeButtonText: 'Close',
      displayKey: "title",
    }).then((result) => {
      var SelectedBlogFilter = this.blogSections.find(function (element) {
        return element.title === result[0].title;
      });
      this.BlogType = SelectedBlogFilter.title;
      this.BlogFilter = `?BlogFilter=${SelectedBlogFilter.id}`;
    } , (err) => {
      console.log("closed");
    });
  }

  onMainCities(){
    this.WheelSelector.show({
      title: 'Select city',
      items: [
        this.MainCities
      ],
      positiveButtonText: 'Choose',
      negativeButtonText: 'Close',
      displayKey: "name",
    }).then((result) => {
      var SelectedCityFilter = this.MainCities.find(function (element) {
        return element.name === result[0].name;
      });
      this.City = SelectedCityFilter.name;
      this.CityFilter = `&CityFilter=${SelectedCityFilter.id}`;
      this.GetPalces(SelectedCityFilter.id);
    } , (err) => {
      console.log("closed");
    });
  }

  onPlaces(){
    if(this.places != null){
      this.WheelSelector.show({
        title: 'Select specific place',
        items: [
          this.places
        ],
        positiveButtonText: 'Choose',
        negativeButtonText: 'Close',
        displayKey: "name",
      }).then((result) => {
        var SelectedPlaceFilter = this.places.find(function (element) {
          return element.name === result[0].name;
        });
        this.Place = SelectedPlaceFilter.name;
        this.PlaceFilter = `&PlaceFilter=${SelectedPlaceFilter.id}`;
      } , (err) => {
      });
    } else {
      let toaster = this.toast.create({message : "Select city first" ,  duration: 3000})
      toaster.present();
    }

  }

  searchFilterWord(ev) {
    this.SearchFilter = `&SearchFilter=${ev.target.value}`;
  }

  GetPalces(id){
    this.DataService.Get(`${Url.ApiUrlLocalTunnul()}/GetListOfSubCities?MohafzaId=${id}`, null, this.access_token).subscribe((data) => {
      this.places = data;
    });
  }


  filter(){
    let Filter = this.BlogFilter+this.CityFilter+this.PlaceFilter+this.SearchFilter;
    this.viewCtrl.dismiss({ DataFilters : Filter});
  }

}