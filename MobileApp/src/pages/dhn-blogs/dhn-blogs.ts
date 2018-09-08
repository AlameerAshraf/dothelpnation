import { Url } from './../../CoreAssestiveModules/Url';
import { DataService } from './../../CoreAssestiveModules/Services/DataService';
import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams, ModalController, ToastController, ActionSheetController } from 'ionic-angular';
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
    private toast: ToastController,
    private actionSheet : ActionSheetController,
    private LoadingService: LoadingService) {

    this.storage.get('access_token').then((SECURITY_DATA) => {
      this.access_token = SECURITY_DATA.access_token;
    })
  }

  ionViewWillEnter() {
    let DataRequest = this.DataService.Get(`${Url.ApiUrlLocalTunnul()}/GetBlogs`, null, this.access_token).subscribe((data) => {
      data.forEach(element => {
        element.date = this.createFormatedDate(element.publish_date, element.time);
        element.shareIcon = "more"
        // element.alt = "assets/img/dothelpnation.jpg";
      });

      this.Blogs = data;
    });
  }


  createFormatedDate(date, time) {
    var originalTime = time
    var formattedTime = originalTime.replace(/-/g, ":");

    var timebody = formattedTime.substring(0, formattedTime.length - 3);

    var AM_PM = originalTime.substring(originalTime.length - 2, originalTime.length)
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
  filter() {
    let filterModal = this.modalCtrl.create('DhnBlogFilterPage');
    filterModal.present();

    filterModal.onDidDismiss(item => {
      this.filteredBlogs(item);
    })
  }


  // Addition handlers 
  AddBlogToServer(Blog_Item) {
    if (Blog_Item.Close) {
      // let toaster = this.toast.create({ message: "Close function" });
      // toaster.present();
    } else {
      this.Blogs = null;
      let DataRequest = this.DataService.Get(`${Url.ApiUrlLocalTunnul()}/GetBlogs`, null, this.access_token).subscribe((data) => {
        data.forEach(element => {
          element.date = this.createFormatedDate(element.publish_date, element.time);
          element.shareIcon = "more"
        });
        this.Blogs = data;
      });
    }
  }


  // Filters Handler 
  filteredBlogs(filterTail) {
    this.Blogs = null;
    this.DataService.Get(`${Url.ApiUrlLocalTunnul()}/SearchBlogs${filterTail.DataFilters}`, null, this.access_token).subscribe((data) => {

      if (data.length > 0) {
        data.forEach(element => {
          element.date = this.createFormatedDate(element.publish_date, element.time);
          element.shareIcon = "more"
        });

        this.Blogs = data;
      } else {
        
        let toast = this.toast.create({ message: "No results found ", duration: 1000 });
        toast.present();
        let DataRequest = this.DataService.Get(`${Url.ApiUrlLocalTunnul()}/GetBlogs`, null, this.access_token).subscribe((data) => {
          data.forEach(element => {
            element.date = this.createFormatedDate(element.publish_date, element.time);
            element.shareIcon = "more"
          });

          this.Blogs = data;
        });
      }
    })
  }



  // View Selected Blog 
  viewSingleBlog(blogId){
    this.LoadingService.show("Loading blog data");
    this.DataService.Get(`${Url.ApiUrlLocalTunnul()}/ViewSingleBlog?blogId=${blogId}` , null , this.access_token )
    .subscribe((blogData) => {
      this.LoadingService.hide();
      this.navCtrl.push("DhnBlogViewPage" , { 
        "blogData" : blogData
      });
    } , (err) => {
      console.log(err);
    })
  }


  // Show Action sheet for blog options 
  presentBlogOptionsActionSheet(blogId){
    let blogOptions = this.actionSheet.create({
      title : "Blog options",
      buttons : [
        {
          text : "Message blog publisher",
          handler : () => {
            this.messageBlogPoster();
          }
        } ,
        {
          text : "Report",
          role : "destructive" , 
          handler : () => {
            this.reportBlog();
          }
        } ,
        {
          text : "Cancel" ,
          role : "cancel" ,
          handler : () => {
            console.log("cancel");
          }
        }
      ]
    });

    blogOptions.present();
  }


  // Message the poster 
  messageBlogPoster(){

    // TODO : Get the poster (user) data from server and send message to the user 

  }


  // Report this blog 
  reportBlog(){

    // No functionality to implement 

  }
}
