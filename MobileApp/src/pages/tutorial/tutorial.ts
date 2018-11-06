import { Storage } from '@ionic/storage';
import { NativeStorage } from '@ionic-native/native-storage';
import { Component } from '@angular/core';
import { IonicPage, MenuController, NavController, Platform } from 'ionic-angular';



import { TranslateService } from '@ngx-translate/core';

export interface Slide {
  title: string;
  description: string;
  image: string;
}

@IonicPage()
@Component({
  selector: 'page-tutorial',
  templateUrl: 'tutorial.html'
})
export class TutorialPage {
  slides: Slide[];
  showSkip = true;
  dir: string = 'rtl';
  access_token: any;

  constructor(public navCtrl: NavController,
    public menu: MenuController,
    translate: TranslateService,
    public platform: Platform ,
    private Storage: Storage,
    private NativeStorage: NativeStorage) {
    translate.get(["TUTORIAL_SLIDE1_TITLE",
      "TUTORIAL_SLIDE1_DESCRIPTION",
      "TUTORIAL_SLIDE2_TITLE",
      "TUTORIAL_SLIDE2_DESCRIPTION",
      "TUTORIAL_SLIDE3_TITLE",
      "TUTORIAL_SLIDE3_DESCRIPTION",
    ]).subscribe(
      (values) => {
        this.slides = [
          {
            title: values.TUTORIAL_SLIDE1_TITLE,
            description: values.TUTORIAL_SLIDE1_DESCRIPTION,
            image: 'assets/img/bjork-live.jpg',
          },
          {
            title: values.TUTORIAL_SLIDE2_TITLE,
            description: values.TUTORIAL_SLIDE2_DESCRIPTION,
            image: 'assets/img/ica-slidebox-img-2.png',
          },
          {
            title: values.TUTORIAL_SLIDE3_TITLE,
            description: values.TUTORIAL_SLIDE3_DESCRIPTION,
            image: 'assets/img/ica-slidebox-img-3.png',
          }
        ];
      });
  }

  startApp() {
    this.Storage.set('UserSettings' , { def_lang : "ar" , def_city_id : 87 });
    this.Storage.set('IsAppStarted' , true);
    this.Storage.set('DeviceTokenGenerated' , false);
    this.navCtrl.setRoot('DhnLoginPage', {}, {
      animate: true,
      direction: 'forward'
    });
  }

  onSlideChangeStart(slider) {
    // This to get the last slide from tutorials
    this.showSkip = !slider.isEnd();
  }

  // the root left menu should be disabled on the tutorial page
  ionViewDidEnter() {
    this.menu.enable(false);
  }

  // enable the root left menu when leaving the tutorial page
  ionViewWillLeave() {
    this.menu.enable(true);
  }


}
