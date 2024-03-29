// Core assestive modules 
import { LoadingService } from './../CoreAssestiveModules/Services/LoadingService';
import { FakeService } from './../CoreAssestiveModules/Services/FakeService';
import { DataService } from '../CoreAssestiveModules/Services/DataService';
import { instanceStorageService } from '../CoreAssestiveModules/Services/instanceStorageService';

import { Items } from '../mocks/providers/items';
import { Settings, User, Api } from '../providers';
import { MyApp } from './app.component';


// Ionic 
import { IonicApp, IonicErrorHandler, IonicModule } from 'ionic-angular';

// NPM Modules 
import { HttpClient, HttpClientModule } from '@angular/common/http';
import { ErrorHandler, NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { AgmCoreModule } from '@agm/core';
import { HttpModule } from '@angular/http';
import { TranslateLoader, TranslateModule } from '@ngx-translate/core';
import { TranslateHttpLoader } from '@ngx-translate/http-loader';
import { SpinnerDialog } from '@ionic-native/spinner-dialog';

// Cordova Plugins
import { NativeStorage } from '@ionic-native/native-storage';
import { SplashScreen } from '@ionic-native/splash-screen';
import { StatusBar } from '@ionic-native/status-bar';
import { IonicStorageModule, Storage } from '@ionic/storage';
import { Facebook } from '@ionic-native/facebook'
import { File } from '@ionic-native/file';
import { FileTransfer, FileUploadOptions, FileTransferObject } from '@ionic-native/file-transfer';
import { FilePath } from '@ionic-native/file-path';
import { Camera } from '@ionic-native/camera';
import { GooglePlus } from '@ionic-native/google-plus';
import { WheelSelector } from '@ionic-native/wheel-selector';
import { SocialSharing } from '@ionic-native/social-sharing';
import { Geolocation } from '@ionic-native/geolocation';
import { Keyboard } from '@ionic-native/keyboard';
import { Network } from '@ionic-native/network';
import { LocalNotifications } from '@ionic-native/local-notifications';
import { Push, PushObject, PushOptions } from '@ionic-native/push';
import { Badge } from '@ionic-native/badge';
import { Device } from '@ionic-native/device';


// The translate loader needs to know where to load i18n files
// in Ionic's static asset pipeline.
export function createTranslateLoader(http: HttpClient) {
  return new TranslateHttpLoader(http, './assets/i18n/', '.json');
}

export function provideSettings(storage: Storage) {
  return new Settings(storage, {
    option1: true,
    option2: 'Ionitron J. Framework',
    option3: '3',
    option4: 'Hello'
  });
}


@NgModule({
  declarations: [
    MyApp
  ],
  imports: [
    AgmCoreModule.forRoot({
      apiKey : "AIzaSyA4-GoZzOqYTvxMe52YQZch5JaCFN6ACLg"
    }),
    HttpModule,
    BrowserModule,
    HttpClientModule,
    TranslateModule.forRoot({
      loader: {
        provide: TranslateLoader,
        useFactory: (createTranslateLoader),
        deps: [HttpClient]
      }
    }),
    IonicModule.forRoot(MyApp),
    IonicStorageModule.forRoot(),
    // NgxSpinnerModule
  ],
  bootstrap: [IonicApp],
  entryComponents: [
    MyApp
  ],
  providers: [
    SpinnerDialog,
    Device,
    Badge,
    Push,
    LocalNotifications,
    Network,
    Keyboard,
    Geolocation,
    SocialSharing,
    WheelSelector,
    File,
    FileTransfer,
    FilePath,
    FileTransferObject,
    GooglePlus,
    instanceStorageService,
    DataService,
    LoadingService,
    NativeStorage,
    FakeService,
    Facebook,
    Api,
    Items,
    User,
    Camera,
    SplashScreen,
    StatusBar,
    { provide: Settings, useFactory: provideSettings, deps: [Storage] },
    // Keep this to enable Ionic's runtime error handling during development
    { provide: ErrorHandler, useClass: IonicErrorHandler }
  ]
})
export class AppModule { }
