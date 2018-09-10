import { Component } from "@angular/core";
import {
  IonicPage,
  NavController,
  NavParams,
  ActionSheetController,
  ToastController,
  ViewController,
  LoadingController
} from "ionic-angular";

import { Storage } from "@ionic/storage";
import { FileTransfer, FileTransferObject } from "@ionic-native/file-transfer";
import { Camera, CameraOptions } from "@ionic-native/camera";
import { File } from "@ionic-native/file";
import { Geolocation } from '@ionic-native/geolocation';

import { WheelSelector } from "@ionic-native/wheel-selector";
import { DataService } from "./../../CoreAssestiveModules/Services/DataService";
import { LoadingService } from "../../CoreAssestiveModules/Services/LoadingService";
import { Url } from "../../CoreAssestiveModules/Url";



@IonicPage()
@Component({
  selector: "page-dhn-blog-craete",
  templateUrl: "dhn-blog-craete.html"
})
export class DhnBlogCraetePage {
  errors: any = {};
  blogImage: string = null;
  // loading: Loading;

  access_token: string;
  logginedUserEmail: string;

  blogSections;
  MainCities;
  places;

  section_id = "?section_id=";
  city_id = "&city_id=";
  place_id = "&place_id=";
  title = "&title=";
  description = "&description=";
  address = "&address=";
  email = "&email=";
  map_latitude ;
  map_longitude;

  // Binded Attributes 
  BlogType;
  City;
  Place;

  // Data to be concatenated to paramters (Values)
  UserAddress;
  BlogTitle;
  BlogDescription;

  // Error alerts attributes to just validate errors 
  SectionId;
  CityId;
  PlaceId;

  map;

  constructor(
    private loadingService: LoadingService,
    public navCtrl: NavController,
    public navParams: NavParams,
    private camera: Camera,
    private WheelSelector: WheelSelector,
    private DataService: DataService,
    private transfer: FileTransfer,
    private storage: Storage,
    private toast: ToastController,
    private actionSheetCtrl: ActionSheetController,
    private viewCtrl: ViewController,
    private geolocation: Geolocation
  ) {
    this.errors = {};
    this.storage.get("access_token").then(SECURITY_DATA => {
      this.access_token = SECURITY_DATA.access_token;
    });

    this.storage.get("Profile_Data").then(PROFILE_DATA => {
      this.logginedUserEmail = PROFILE_DATA.email;
    });

    this.DataService.Get(
      `${Url.ApiUrlLocalTunnul()}/GetListOfBlogSections?site_lang=en`,
      null,
      this.access_token
    ).subscribe(data => {
      this.blogSections = data;
    });

    this.DataService.Get(
      `${Url.ApiUrlLocalTunnul()}/GetListOfMainCities`,
      null,
      this.access_token
    ).subscribe(data => {
      this.MainCities = data;
    });

    this.map = {
      "map": {
        "lat": 0,
        "lng": 0,
        "zoom": 20,
        "mapTypeControl": true,
        "streetViewControl": true
      }
    }

    this.map_latitude = `&map_latitude=${0}`;
    this.map_longitude = `&map_longitude=${0}`;

    // Getting current location 
    this.geolocation.getCurrentPosition().then((resp) => {
      this.map.map.lat = resp.coords.latitude;
      this.map.map.lng = resp.coords.longitude;

      this.map_latitude = `&map_latitude=${resp.coords.latitude}`;
      this.map_longitude = `&map_longitude=${resp.coords.longitude}`;

    }).catch((error) => {
      console.log(error);
    })


  }

  ionViewDidEnter() {

  }

  ionViewDidLoad() {
    console.log("ionViewDidLoad DhnBlogCraetePage");
  }

  presentImageActionSheet() {
    let ImageCaptureSheet = this.actionSheetCtrl.create({
      title: "Select or upload image",
      buttons: [
        {
          text: "Laod from library",
          handler: () => {
            this.getImage(this.camera.PictureSourceType.PHOTOLIBRARY);
          }
        },
        {
          text: "Open camera",
          handler: () => {
            this.getImage(this.camera.PictureSourceType.CAMERA);
          }
        },
        {
          text: "Cancel",
          role: "cancel"
        }
      ]
    });

    ImageCaptureSheet.present();
  }

  imageViewer() {
    return "url(" + this.blogImage + ")";
  }

  getImage(sourceType) {
    const options: CameraOptions = {
      quality: 70,
      correctOrientation: true,
      allowEdit: true,
      destinationType: this.camera.DestinationType.DATA_URL,
      sourceType: sourceType
    };

    this.camera.getPicture(options).then(
      imageData => {
        this.blogImage = "data:image/jpeg;base64," + imageData;
      },
      error => {
        console.log("ERROR -> " + JSON.stringify(error));
      }
    );
  }

  onblogSections() {
    this.WheelSelector.show({
      title: "Select blog type",
      items: [this.blogSections],
      positiveButtonText: "Choose",
      negativeButtonText: "Close",
      displayKey: "title"
    }).then(
      result => {
        var SelectedBlogFilter = this.blogSections.find(function (element) {
          return element.title === result[0].title;
        });
        this.BlogType = SelectedBlogFilter.title;
        this.section_id = `?section_id=${SelectedBlogFilter.id}`;
        this.SectionId = SelectedBlogFilter.id;
        delete this.errors["SectionId"];
      },
      err => {
        console.log("closed");
      }
    );
  }

  onMainCities() {
    this.WheelSelector.show({
      title: "Select city",
      items: [this.MainCities],
      positiveButtonText: "Choose",
      negativeButtonText: "Close",
      displayKey: "name"
    }).then(
      result => {
        var SelectedCityFilter = this.MainCities.find(function (element) {
          return element.name === result[0].name;
        });
        this.City = SelectedCityFilter.name;
        this.city_id = `&city_id=${SelectedCityFilter.id}`;
        this.CityId = SelectedCityFilter.id;
        this.loadingService.show("Loading Places"); // Places loader
        this.GetPalces(SelectedCityFilter.id);
        delete this.errors["CityId"];
      },
      err => {
        console.log("closed");
      }
    );
  }

  GetPalces(id) {
    this.DataService.Get(
      `${Url.ApiUrlLocalTunnul()}/GetListOfSubCities?MohafzaId=${id}`,
      null,
      this.access_token
    ).subscribe(data => {
      this.places = data;
      this.loadingService.hide(); // Places hidder 
    });
  }

  onPlaces() {
    if (this.places != null) {
      this.WheelSelector.show({
        title: "Select specific place",
        items: [this.places],
        positiveButtonText: "Choose",
        negativeButtonText: "Close",
        displayKey: "name"
      }).then(
        result => {
          var SelectedPlaceFilter = this.places.find(function (element) {
            return element.name === result[0].name;
          });
          this.Place = SelectedPlaceFilter.name;
          this.place_id = `&place_id=${SelectedPlaceFilter.id}`;
          this.PlaceId = SelectedPlaceFilter.id;
          delete this.errors["PlaceId"];
        },
        err => { }
      );
    } else {
      let toaster = this.toast.create({
        message: "Select city first",
        duration: 3000
      });
      toaster.present();
    }
  }

  public uploadImage() {

    let sendRequest = this.ValidateBlogData(); // true means Error

    if (!sendRequest) {
      var requestParams =
        this.section_id + this.city_id +
        this.place_id +
        `${this.email}${this.logginedUserEmail}` +
        `${this.title}${this.BlogTitle}` +
        `${this.description}${this.BlogDescription}` +
        `${this.address}${this.UserAddress}`+
        this.map_latitude + this.map_longitude;

      // Destination URL
      var url = `${Url.ApiUrlLocalTunnul()}/CraeteNewBlog${requestParams}`;
      // File for Upload
      console.log(url)

      // File name only
      var filename = this.createFileName();

      var options = {
        fileKey: "file",
        fileName: filename,
        chunkedMode: false,
        mimeType: "multipart/form-data",
        params: {}
      };

      const fileTransfer: FileTransferObject = this.transfer.create();
      this.loadingService.show("Posting Blog"); // Posting blog loader 

      fileTransfer
        .upload(this.blogImage, url, options)
        .then(data => {
          console.log(data);
          this.loadingService.hide(); // Posting blog hidder 
          this.viewCtrl.dismiss({ "Close": false });
        })
        .catch(err => {
          console.log(err);
        });
    } else {
      let toaster = this.toast.create({ message: "Some fileds are required", duration: 2000 });
      toaster.present();
    }
  }


  ValidateBlogData() {
    let count = 0;
    if (this.UserAddress == undefined) { this.errors.address = "error"; count++; }
    if (this.BlogTitle == undefined) { this.errors.title = "error"; count++; }
    if (this.BlogDescription == undefined) { this.errors.description = "error"; count++; }
    if (this.SectionId == undefined) { this.errors.SectionId = "error"; count++; }
    if (this.CityId == undefined) { this.errors.CityId = "error"; count++; }
    if (this.PlaceId == undefined) { this.errors.PlaceId = "error"; count++; }

    return count > 0 ? true : false;
  }

  reValidateErrors(attribute) {
    if (attribute == "address") { delete this.errors["address"] }
    if (attribute == "title") { delete this.errors["title"] }
    if (attribute == "description") { delete this.errors["description"] }
  }

  //Private Methods ...
  createFileName() {
    var d = new Date(),
      n = d.getTime(),
      newFileName = n + ".jpg";
    return newFileName;
  }

  close() {
    this.viewCtrl.dismiss({ "Close": true });
  }
}
