
import { Component } from '@angular/core';
import { Storage } from '@ionic/storage';
import { ISignalRConnection } from 'ng2-signalr';
import { IonicPage, NavController, NavParams, AlertController, Events } from 'ionic-angular';

import { WheelSelector } from '@ionic-native/wheel-selector';

import { instanceStorageService } from '../../CoreAssestiveModules/Services/instanceStorageService';
import { DataService } from './../../CoreAssestiveModules/Services/DataService';
import { Url } from '../../CoreAssestiveModules/Url';

@IonicPage()
@Component({
  selector: 'page-dhn-settings',
  templateUrl: 'dhn-settings.html',
})
export class DhnSettingsPage {
  DefLangLabel: string;
  DefLang = "Language ..";
  DefCity = "City ..";
  Languges: any[] = [
    { En_Lang: "English", Ar_Lang: "English" },
    { En_Lang: "Arabic", Ar_Lang: "العربية" }
  ];
  Cities;
  access_token: any;
  attributeLangCode: string;


  constructor(public navCtrl: NavController,
    private instanceStorage: instanceStorageService,
    private events: Events,
    public navParams: NavParams,
    private Storage: Storage,
    private WheelSelector: WheelSelector,
    private DataService: DataService,
    private storage: Storage,
    public alertCtrl: AlertController) {
    this.storage.get('access_token').then((SECURITY_DATA) => {
      this.access_token = SECURITY_DATA.access_token;
    });

    this.attributeLangCode = this.DefLangLabel == "en" ? "En_Lang" : "Ar_Lang";

  }


  ionViewDidLoad() {
    this.DataService.Get(`${Url.ApiUrlLocalTunnul()}/GetListOfMainCities`, null, this.access_token)
      .subscribe((cities) => {
        this.Cities = cities;
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
    Promise.all([this.Storage.remove('access_token'), this.Storage.remove('Profile_Data')]).then(() => {
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
      negativeButtonText: "cancel"
    }).then((result) => {
      if (this.DefLangLabel = "ar")
        this.DefLang = result[0].Ar_Lang;
      else
        this.DefLang = result[0].En_Lang;
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
    })
  }


}
