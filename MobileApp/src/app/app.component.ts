import { Component, ViewChild, OnInit } from '@angular/core';
import { SplashScreen } from '@ionic-native/splash-screen';
import { StatusBar } from '@ionic-native/status-bar';
import { TranslateService } from '@ngx-translate/core';
import { Config, Nav, Platform } from 'ionic-angular';

import { FirstRunPage } from '../pages';
import { Settings } from '../providers';
import { NativeStorage } from '@ionic-native/native-storage';
import { Storage } from '@ionic/storage';

@Component({
  template: `<ion-menu [content]="content">
    <ion-header>
      <ion-toolbar>
        <ion-title>Pages</ion-title>
      </ion-toolbar>
    </ion-header>

    <ion-content>
      <ion-list>
        <button menuClose ion-item *ngFor="let p of pages" (click)="openPage(p)">
          {{p.title}}
        </button>
      </ion-list>
    </ion-content>

  </ion-menu>
  <ion-nav #content [root]="rootPage"></ion-nav>`
})
export class MyApp implements OnInit {

  rootPage = "";

  @ViewChild(Nav) nav: Nav;

  pages: any[] = [
    { title: 'Tutorial', component: 'TutorialPage' },
    { title: 'Welcome', component: 'WelcomePage' },
    { title: 'Tabs', component: 'TabsPage' },
    { title: 'Cards', component: 'CardsPage' },
    { title: 'Content', component: 'ContentPage' },
    // { title: 'Login', component: 'LoginPage' },
    { title: 'Signup', component: 'SignupPage' },
    { title: 'Master Detail', component: 'ListMasterPage' },
    { title: 'Menu', component: 'MenuPage' },
    { title: 'Settings', component: 'SettingsPage' },
    { title: 'Search', component: 'SearchPage' },
    { title: 'Login', component: 'DhnLoginPage' },
    // { title: 'TabsHome', component: 'DhnHomeTabsPage' }
  ]

  ngOnInit(): void {
    this.Storage.get('IsAppStarted').then((IsAppStarted) => {
      if (IsAppStarted) {
        this.Storage.get('access_token').then((access_token) => {
          if (access_token != null) {
            if (new Date(new Date().getTime() + access_token.expires_in * 1000) > new Date()) {
              this.rootPage = "DhnHomeTabsPage";
            } else {
              this.rootPage = "DhnLoginPage";
            }
          } else {
            this.rootPage = "DhnLoginPage";
          }
        })
      } else {
        this.rootPage = "TutorialPage";
      }
    })
  }


  constructor(private translate: TranslateService,
    private platform: Platform,
    private Storage: Storage,
    settings: Settings,
    private config: Config,
    private statusBar: StatusBar,
    private splashScreen: SplashScreen ,
    private NativeStorage: NativeStorage) {
    platform.ready().then(() => {
      this.statusBar.styleDefault();
      this.splashScreen.hide();
    });
    this.initTranslate();
  }

  initTranslate() {
    // Set the default language for translation strings, and the current language.
    this.translate.setDefaultLang('ar');
    const browserLang = this.translate.getBrowserLang();
    console.log(browserLang);

    if (browserLang) {
      this.translate.use('en');
    } else {
      this.translate.use('en'); // Set the use langauge here FROM DATABASE !
    }

    this.translate.get(['BACK_BUTTON_TEXT']).subscribe(values => {
      this.config.set('ios', 'backButtonText', values.BACK_BUTTON_TEXT);
    });
  }

  openPage(page) {
    this.nav.setRoot(page.component);
  }
}
