import { WheelSelector } from '@ionic-native/wheel-selector';
import { Component } from '@angular/core';
import { FormGroup } from '@angular/forms';
import { Storage } from '@ionic/storage';
import { SpinnerDialog } from '@ionic-native/spinner-dialog';

import { IonicPage, NavController, NavParams, ModalController, ViewController, ToastController } from 'ionic-angular';
import { DataService } from '../../CoreAssestiveModules/Services/DataService';
import { LoadingService } from './../../CoreAssestiveModules/Services/LoadingService';
import { Url } from '../../CoreAssestiveModules/Url';
import { Observable } from 'rxjs/Observable';

import 'rxjs/add/observable/forkJoin';
import { TranslateService } from '@ngx-translate/core';

@IonicPage()
@Component({
  selector: 'page-dhn-blog-filter',
  templateUrl: 'dhn-blog-filter.html',
})
export class DhnBlogFilterPage {

  access_token;
  blogSections;
  // BlogType = "Select blog ..";
  MainCities;
  // City = "Select city ..";
  places;
  // Place = "Select place ..";

  BlogFilter = `?BlogFilter=`;
  CityFilter = `&CityFilter=`;
  PlaceFilter = `&PlaceFilter=`;
  SearchFilter = `&SearchFilter=`;
  dir: string;
  revDir: string;
  data = {
    BlogType : "",
    City : "",
    Place: "" ,
    TextSearchLabel : "",
    FilterLabel : "",
    ClearLabel : "",
    HeaderLabel : "",
    BlogTypeLabel : "",
    CityLabel : "",
    PlaceLabel : "" ,
    IOScancel : ""      

  };

  constructor(public navCtrl: NavController, 
    private spinnerDialog: SpinnerDialog,
    private translate: TranslateService,
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

    this.storage.get("UserSettings").then(settings => {
      this.dir = settings.def_lang == "ar" ? "rtl" : "ltr";
    });

    this.translate
      .get([
        "BLOG_TYPE_FILTER",
        "CITY_LABEL_FILTER",
        "PLACE_LABEL_FILTER",
        "SEARCH_LABEL_TEXT",
        "FILTER_BTN_LABEL",
        "CLEAR_BTN_LABEL",
        "BLOG_TYPE_LABEL",
        "CITY_LABEL",
        "PLACE_LABEL",
        "FILTERS_MODAL_LABEL",
        "IOS_CANCEL"
      ])
      .subscribe(values => {
        this.data.BlogType = values.BLOG_TYPE_FILTER,
        this.data.City = values.CITY_LABEL_FILTER,
        this.data.Place = values.CLEAR_BTN_LABEL,
        this.data.BlogTypeLabel = values.BLOG_TYPE_LABEL,
        this.data.CityLabel = values.CITY_LABEL,
        this.data.PlaceLabel = values.PLACE_LABEL,
        this.data.TextSearchLabel = values.SEARCH_LABEL_TEXT,
        this.data.FilterLabel = values.FILTER_BTN_LABEL,
        this.data.ClearLabel = values.CLEAR_BTN_LABEL,
        this.data.HeaderLabel = values.FILTERS_MODAL_LABEL,
        this.data.IOScancel = values.IOS_CANCEL
      });

    // Show loading for blog types 
    this.spinnerDialog.show();

    let blogTypeData = this.DataService.Get(`${Url.ApiUrlLocalTunnul()}/GetListOfBlogSections?site_lang=en`, null, this.access_token);
    let mainCitiesData = this.DataService.Get(`${Url.ApiUrlLocalTunnul()}/GetListOfMainCities`, null, this.access_token);

    let formData = Observable.forkJoin([ blogTypeData , mainCitiesData ]).subscribe((results) => {
      this.blogSections = results[0];
      this.MainCities = results[1];

      // Hide the loader 
      this.spinnerDialog.hide();
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
      this.data.BlogType = SelectedBlogFilter.title;
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
      this.data.City = SelectedCityFilter.name;
      this.CityFilter = `&CityFilter=${SelectedCityFilter.id}`;

      this.spinnerDialog.show();  // show loading places 
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
        this.data.Place = SelectedPlaceFilter.name;
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
      this.spinnerDialog.hide(); // Loading places loader  
      this.places = data;
    });
  }


  filter(){
    let Filter = this.BlogFilter+this.CityFilter+this.PlaceFilter+this.SearchFilter;
    this.viewCtrl.dismiss({ DataFilters : Filter});
  }

}
