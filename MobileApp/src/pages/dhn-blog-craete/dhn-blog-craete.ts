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
import { Geolocation } from '@ionic-native/geolocation';
import { MouseEvent } from '@agm/core';
import { SpinnerDialog } from '@ionic-native/spinner-dialog';



import { WheelSelector } from "@ionic-native/wheel-selector";
import { DataService } from "./../../CoreAssestiveModules/Services/DataService";
import { LoadingService } from "../../CoreAssestiveModules/Services/LoadingService";
import { Url } from "../../CoreAssestiveModules/Url";
import { Observable } from 'rxjs/Observable';

import 'rxjs/add/observable/forkJoin';
import { TranslateService } from "@ngx-translate/core";



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
  dir: string;
  data = {
    HeaderLabel : "" ,
    IOScancel : "" ,
    ImageAddingLabel : "" ,
    BlogTypeLabel : "" ,
    BlogType : "" ,
    CityLabel : "" ,
    City : "" ,
    PlaceLabel : "",
    Place : "",
    Address : "" ,
    Title : "",
    Description : "" ,
    PublishLabel : ""
  }

  constructor(
    private translate: TranslateService,
    private spinnerDialog: SpinnerDialog,
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

    // dierction based on languge 
    this.storage.get("UserSettings").then(settings => {
      this.dir = settings.def_lang == "ar" ? "rtl" : "ltr";
    });

    this.translate.get([
      "CREATE_MODAL_LABEL" ,
      "IOS_CANCEL" ,
      "ADD_IMIAGE_LABEL",
      "BLOG_TYPE_LABEL" ,
      "CITY_LABEL",
      "PLACE_LABEL",
      "ADDRESS_LABEL",
      "TITLE_LABEL",
      "DESCRIPTION_LABEL",
      "PUBLISH_BTN_LABEL"
    ]).subscribe((values) => {
      this.data.HeaderLabel = values.CREATE_MODAL_LABEL,
      this.data.IOScancel = values.IOS_CANCEL,
      this.data.ImageAddingLabel = values.ADD_IMIAGE_LABEL,
      this.data.BlogTypeLabel = values.BLOG_TYPE_LABEL ,
      this.data.CityLabel = values.CITY_LABEL ,
      this.data.PlaceLabel = values.PLACE_LABEL ,
      this.data.Address = values.ADDRESS_LABEL ,
      this.data.Title = values.TITLE_LABEL ,
      this.data.Description = values.DESCRIPTION_LABEL ,
      this.data.PublishLabel = values.PUBLISH_BTN_LABEL
    });

    
    this.spinnerDialog.show(); // show loaders 
    let blogTypeData = this.DataService.Get(`${Url.ApiUrlLocalTunnul()}/GetListOfBlogSections?site_lang=en`,null,this.access_token)
    let mainCitiesData = this.DataService.Get(`${Url.ApiUrlLocalTunnul()}/GetListOfMainCities`,null,this.access_token)

    Observable.forkJoin([blogTypeData , mainCitiesData]).subscribe((results) => {
      this.blogSections = results[0];
      this.MainCities = results[1];

      // Hide the loaders for loading data 
      this.spinnerDialog.hide();
    });

    this.map = {
      "map": {
        "lat": 0,
        "lng": 0,
        "zoom": 17,
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
        this.spinnerDialog.show(); // Places loader
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
      this.spinnerDialog.hide(); // Places hidder 
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
      this.spinnerDialog.show(); // Posting blog loader 

      this.blogImage = this.blogImage != null 
        ? this.blogImage 
        : "data:image/jpeg;base64," + "/9j/4AAQSkZJRgABAQAAAQABAAD/2wBDAAoHBwgHBgoICAgLCgoLDhgQDg0NDh0VFhEYIx8lJCIfIiEmKzcvJik0KSEiMEExNDk7Pj4+JS5ESUM8SDc9Pjv/2wBDAQoLCw4NDhwQEBw7KCIoOzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozv/wAARCAE7A1IDASIAAhEBAxEB/8QAFwABAQEBAAAAAAAAAAAAAAAAAAECBv/EACcQAQEAAgIBAwMEAwAAAAAAAAABAhESITEDQdEikcETMlFxUmGh/8QAFwEBAQEBAAAAAAAAAAAAAAAAAAEDBv/EABcRAQEBAQAAAAAAAAAAAAAAAAARARL/2gAMAwEAAhEDEQA/AONAYuZAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABrHGZb3dam5v+5Pyakk5XW7Z/Xj5FjI3cZjbMt/TPq+Ex4ZZSayx3fHkIyNTjlLxmUs9qcLbqXG3etS+AmsjUx3vVl7ncvXv8LPTuWuOWOW7qavuE1gWzUllll95drx15yxl1vVvYRka4X+ZvW9b70yAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAb6s1vc1/2X8LcrljMbrrff8+PhAWry+rLLj1lbub/AN7JnJZZ6d6u+8vKAVedn7MeN67t2t9S5TVmet9y+pb9mQXrWv1Lb3NS+bbu+LO/uc8JrhJdXd73+GQOll1JLjuTfvrzJ8HKWd+nvLWt8uvsgJV5e/D6v8t9fZADdoAI/9k=";

      fileTransfer
        .upload(this.blogImage, url, options)
        .then(data => {
          console.log(data);
          this.spinnerDialog.hide(); // Posting blog hidder 
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
    // if (this.BlogDescription == undefined) { this.errors.description = "error"; count++; }
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



  // Map Markers 
  markerDragEnd($event: MouseEvent) {
    this.map_latitude = `&map_latitude=${$event.coords.lat}`;
    this.map_longitude = `&map_longitude=${$event.coords.lng}`;

    this.map.map.lat = $event.coords.lat;
    this.map.map.lng = $event.coords.lng;
  }
}