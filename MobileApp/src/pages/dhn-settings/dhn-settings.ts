
import { Component } from '@angular/core';
import { Storage } from '@ionic/storage';
import { ISignalRConnection } from 'ng2-signalr';
import { IonicPage, NavController, NavParams, AlertController, Events } from 'ionic-angular';

import { WheelSelector } from '@ionic-native/wheel-selector';

import { instanceStorageService } from '../../CoreAssestiveModules/Services/instanceStorageService';
import { DataService } from './../../CoreAssestiveModules/Services/DataService';
import { Url } from '../../CoreAssestiveModules/Url';
import { LoadingService } from '../../CoreAssestiveModules/Services/LoadingService';

@IonicPage()
@Component({
  selector: 'page-dhn-settings',
  templateUrl: 'dhn-settings.html',
})
export class DhnSettingsPage {
  DefLangShortcut: string;
  DefCityId ;
  DefLang = "Language ..";
  DefCity = "City ..";


  Languges: any[] = [
    { En_Lang: "English", Ar_Lang: "الانجليزية" , shortcut : "en" },
    { En_Lang: "Arabic", Ar_Lang: "العربية"  , shortcut : "ar"}
  ];
  Cities = [] ;


  access_token: any;
  attributeLangCode: string;
  defaultlangobj: any;
  defaultcityobj: any;


  constructor(public navCtrl: NavController,
    private loading : LoadingService,
    private instanceStorage: instanceStorageService,
    private events: Events,
    public navParams: NavParams,
    private WheelSelector: WheelSelector,
    private DataService: DataService,
    private storage: Storage,
    public alertCtrl: AlertController) {
    this.storage.get('access_token').then((SECURITY_DATA) => {
      this.access_token = SECURITY_DATA.access_token;
    });
  }


  ionViewDidLoad() {
    this.loading.show("Loading ...");
    this.DataService.Get(`${Url.ApiUrlLocalTunnul()}/GetListOfMainCities`, null, this.access_token).subscribe((cities) => {        this.Cities = cities;
        this.storage.get('UserSettings').then((user_settings) => {
          this.loading.hide();
          let defaultSavedCity = this.Cities.find(x => x.id == user_settings.def_city_id);
          // label 
          this.DefCity = defaultSavedCity.name;
          // data 
          this.DefCityId = user_settings.def_city_id;
    
          // label
          this.DefLang = user_settings.def_lang == "en" ? "English" : "العربية" ;
          // data 
          this.DefLangShortcut = user_settings.def_lang;
    
          this.attributeLangCode = this.DefLangShortcut == "en" ? "En_Lang" : "Ar_Lang";
    
    
          this.defaultlangobj = this.Languges.find(x => x.shortcut == user_settings.def_lang);
          this.defaultcityobj = this.Cities.find(x => x.id == user_settings.def_city_id);
        });
    });
  }

  showConfirm() {
    const confirm = this.alertCtrl.create({
      title: 'Do you want to logout ?',
      buttons: [
        {
          text: 'Cancel',
          handler: () => {
            confirm.willUnload;
          }
        },
        {
          text: 'Yes',
          handler: () => {
            this.Logout();
          }
        }
      ]
    });
    confirm.present();
  }


  Logout() {
    Promise.all([this.storage.remove('access_token'), this.storage.remove('Profile_Data')]).then(() => {
      this.events.publish('logout:clicked');
    });
  }


  onLangugeSelected() {
    this.WheelSelector.show({
      title: "Select Default Languge",
      items: [
        this.Languges
      ],
      displayKey: this.attributeLangCode,
      positiveButtonText: "select",
      negativeButtonText: "cancel",
    }).then((result) => {
      if (this.DefLangShortcut = "ar"){
        this.DefLang = result[0].Ar_Lang;
      }
      else{
        this.DefLang = result[0].En_Lang;
      }
      this.DefLangShortcut = result[0].shortcut;
      this.storage.set('UserSettings' , {def_lang : this.DefLangShortcut , def_city_id : this.DefCityId});
    }, (err) => {
      console.log("Closed");
    })
  }


  onCitySelection() {
    this.WheelSelector.show({
      title: "Select Default City",
      items: [
        this.Cities
      ],
      positiveButtonText: "select",
      negativeButtonText: "cancel",
      displayKey: "name",
    }).then((result) => {
      var SelectedCityFilter = this.Cities.find(function (element) {
        return element.name === result[0].name;
      });
      this.DefCity = SelectedCityFilter.name;
      this.DefCityId = SelectedCityFilter.id;
      this.storage.set('UserSettings' , {def_lang : this.DefLangShortcut , def_city_id : this.DefCityId});
    })
  }


}
