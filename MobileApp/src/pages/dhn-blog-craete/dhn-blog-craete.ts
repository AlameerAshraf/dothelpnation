import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams, ActionSheetController, Platform, ToastController } from 'ionic-angular';

import { LoadingController } from 'ionic-angular';
import { FileTransfer, FileUploadOptions, FileTransferObject } from '@ionic-native/file-transfer';
import { Camera, CameraOptions } from '@ionic-native/camera';
import { FilePath } from '@ionic-native/file-path';
import { File } from '@ionic-native/file';
import { Url } from '../../CoreAssestiveModules/Url';

@IonicPage()
@Component({
  selector: 'page-dhn-blog-craete',
  templateUrl: 'dhn-blog-craete.html',
})
export class DhnBlogCraetePage {

  form: any;
  blogImage: string = null;
  // loading: Loading;

  imageURI: any;
  imageFileName: any;


  constructor(public navCtrl: NavController,
    public navParams: NavParams,
    private camera: Camera,
    private file: File,
    private transfer: FileTransfer,
    private filePath: FilePath,
    private platform: Platform,
    private toastCtrl: ToastController,
    private actionSheetCtrl: ActionSheetController) {
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad DhnBlogCraetePage');
  }

  presentImageActionSheet() {
    let ImageCaptureSheet = this.actionSheetCtrl.create({
      title: 'Select or upload image',
      buttons: [
        {
          text: 'Laod from library',
          handler: () => {
            this.getImage(this.camera.PictureSourceType.PHOTOLIBRARY);
          }
        },
        {
          text: 'Open camera',
          handler: () => {
            this.getImage(this.camera.PictureSourceType.CAMERA);
          }
        },
        {
          text: 'Cancel',
          role: 'cancel'
        }
      ]
    });

    ImageCaptureSheet.present();
  }


  getImage(sourceType) {
    const options: CameraOptions = {
      quality: 100,
      correctOrientation: true,
      allowEdit: true,
      destinationType: this.camera.DestinationType.DATA_URL,
      sourceType: sourceType
    }

    this.camera.getPicture(options).then(imageData => {
      this.blogImage = "data:image/jpeg;base64," + imageData;
    }, error => {
      console.log('ERROR -> ' + JSON.stringify(error));
    });
  }


  public uploadImage() {
    // Destination URL
    var url = `${Url.ApiUrlLocalTunnul()}/CraeteNewBlog?section_id=11&city_id=2&place_id=5&title=العثور على طفلتين&description=الطفلتين دول معثور عليهم بمدينة طنطا منذ حوالي أسبوعين.....أي أحد يعرف أهليهم يتصل بي ٠١٢٢٥٨٧٥٦٠٧&userId=5`;
    // File for Upload

    // File name only
    var filename = this.createFileName();

    var options = {
      fileKey: "file",
      fileName: filename,
      chunkedMode: false,
      mimeType: "multipart/form-data",
      params: {  }
    };

    const fileTransfer: FileTransferObject = this.transfer.create();

    fileTransfer.upload(this.blogImage , url , options).then((data) => {
      console.log(data);
    }).catch((err) => {
      console.log(err);
    })
  }


  createFileName() {
    var d = new Date(),
      n = d.getTime(),
      newFileName = n + ".jpg";
    return newFileName;
  }



}
