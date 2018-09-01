import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams, ActionSheetController, Platform, ToastController } from 'ionic-angular';

import {  LoadingController} from 'ionic-angular';
import { FileTransfer, FileUploadOptions, FileTransferObject } from '@ionic-native/file-transfer';
import { Camera, CameraOptions } from '@ionic-native/camera';
import { FilePath } from '@ionic-native/file-path';
import { File } from '@ionic-native/file';

@IonicPage()
@Component({
  selector: 'page-dhn-blog-craete',
  templateUrl: 'dhn-blog-craete.html',
})
export class DhnBlogCraetePage {

  form: any;
  lastImage: string = null;
  // loading: Loading;

  imageURI:any;
  imageFileName:any;


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
      title: 'Select image source',
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
      destinationType: this.camera.DestinationType.FILE_URI,
      sourceType: sourceType
    }

    this.camera.getPicture(options).then((imageData) => {
      this.imageURI = imageData;
      console.log(this.imageURI);
      var path = imageData.substr(0, imageData.lastIndexOf('/') + 1)
      var fileName = imageData.substr(imageData.lastIndexOf('/') + 1);
      this.file.checkFile(this.file.dataDirectory , "er.jpg").then((sd) => {
        console.log(sd)
      }).catch((err) => {
        console.log(err)
      })
      this.file.copyFile(path , fileName , this.file.dataDirectory , "34.jpg" ).then(() => {
        this.lastImage = (this.file.dataDirectory+"34.jpg").replace(/^file:\/\//, '');
        console.log(this.lastImage)
        this.file.checkFile(this.file.dataDirectory , "34.jpg").then((sd) => {
          console.log(sd)
        })
      }).catch((err) => {
        console.log(err)
      })
    }, (err) => {
      console.log(err);
    });
  }


  // takePicture(sourceType) {
  //   // Create options for the Camera Dialog
  //   var options = {
  //     quality: 100,
  //     sourceType: sourceType,
  //     saveToPhotoAlbum: true,
  //     correctOrientation: true
  //   };

  //   this.camera.getPicture(options).then((imagePath) => {
  //     // Special handling for Android library
  //     if (this.platform.is('android') && sourceType === this.camera.PictureSourceType.PHOTOLIBRARY) {
  //       this.filePath.resolveNativePath(imagePath)
  //         .then(filePath => {
  //           let correctPath = filePath.substr(0, filePath.lastIndexOf('/') + 1);
  //           let currentName = imagePath.substring(imagePath.lastIndexOf('/') + 1, imagePath.lastIndexOf('?'));
  //           this.copyFileToLocalDir(correctPath, currentName, this.createFileName());
  //         });
  //     } else {
  //       var currentName = imagePath.substr(imagePath.lastIndexOf('/') + 1);
  //       var correctPath = imagePath.substr(0, imagePath.lastIndexOf('/') + 1);
  //       this.copyFileToLocalDir(correctPath, currentName, this.createFileName());
  //     }
  //   }, (err) => {
  //     this.toastCtrl.create({ message: 'Error while storing file.' });
  //   });
  // }

  createFileName() {
    var d = new Date(),
      n = d.getTime(),
      newFileName = n + ".jpg";
    return newFileName;
  }

  // Copy the image to a local folder
  // private copyFileToLocalDir(namePath, currentName, newFileName) {
  //   this.file.copyFile(namePath, currentName, this.file.dataDirectory, newFileName).then(success => {
  //     this.lastImage = newFileName;
  //   }, error => {
  //     this.toastCtrl.create({ message: 'Error while storing file.' });
  //   });
  // }


  // Always get the accurate path to your apps folder
  // public pathForImage(img) {
  //   if (img === null) {
  //     return '';
  //   } else {
  //     return this.file.dataDirectory + img
  //   }
  // }


  public uploadImage() {
    // Destination URL
    var url = "http://yoururl/upload.php";

    // File for Upload
    //var targetPath = this.pathForImage(this.lastImage);
    //alert(targetPath);
    console.log(this.lastImage);

    // File name only
    var filename = this.lastImage;

    var options = {
      fileKey: "file",
      fileName: filename,
      chunkedMode: false,
      mimeType: "multipart/form-data",
      params: { 'fileName': filename }
    };

    // const fileTransfer: FileTransferObject = this.transfer.create();
  }



}
 