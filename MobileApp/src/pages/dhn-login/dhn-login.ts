import { Network } from '@ionic-native/network';
import { Storage } from '@ionic/storage';
import { Component, OnInit } from '@angular/core';
import { IonicPage, NavController, NavParams, Events, ToastController, AlertController } from 'ionic-angular';
import { TranslateService } from '@ngx-translate/core';
import { FormGroup, FormBuilder } from '@angular/forms';
import { Facebook, FacebookLoginResponse } from '@ionic-native/facebook';
import { GooglePlus } from '@ionic-native/google-plus';
import { SpinnerDialog } from '@ionic-native/spinner-dialog';
import { VolatileStorage } from '../../CoreAssestiveModules/VolatileStorage';
import { ValidationSupplier } from './../../CoreAssestiveModules/forms/ValidationSupplier';
import { DataService } from '../../CoreAssestiveModules/Services/DataService';
import { Url } from '../../CoreAssestiveModules/Url';


export enum ConnectionStatusEnum {
  Online,
  Offline
}



@IonicPage()
@Component({
  selector: "page-dhn-login",
  templateUrl: "dhn-login.html"
})
export class DhnLoginPage implements OnInit {
  dir: string = "";
  revDir: string = "";
  data = {
    forgotPassword: "",
    subtitle: "",
    title: "",
    labelEmail: "",
    email: "",
    labelPassword: "",
    password: "",
    login: "",
    facebook: "",
    GooglePlus: "",
    register: "",
    registerationQuestion: "",
    logo: "assets/img/2.png"
  };

  email: string;
  password: string;

  validations = {};
  loginform: FormGroup;
  previousStatus: ConnectionStatusEnum;

  constructor(
    private network: Network,
    private alertCtrl: AlertController,
    private toaster: ToastController,
    private events: Events,
    public navCtrl: NavController,
    public navParams: NavParams,
    private storage: Storage,
    private DataService: DataService,
    private translate: TranslateService,
    private fb: Facebook,
    private googlePlus: GooglePlus,
    private formBuilder: FormBuilder,
    private spinnerDialog: SpinnerDialog
  ) {
    this.previousStatus = ConnectionStatusEnum.Online;

    this.network.onDisconnect().subscribe(() => {
      if (this.previousStatus === ConnectionStatusEnum.Online) {
        let alert = this.alertCtrl.create({
          title: 'Connection problem',
          subTitle: 'Please check your internet connection and , try again later.',
          buttons: [
            {
              text: 'Dissmis',
              role: 'cancel',
              handler: () => {
                this.spinnerDialog.show('', 'Trying to reconnect');
              }
            }
          ]
        });
        alert.present();
      }

      this.previousStatus = ConnectionStatusEnum.Offline;
    });

    this.network.onConnect().subscribe(() => {
      if (this.previousStatus === ConnectionStatusEnum.Offline) {
        this.spinnerDialog.hide();
      }

      this.previousStatus = ConnectionStatusEnum.Online;
    });


    this.storage.get("UserSettings").then(settings => {
      this.dir = settings.def_lang == "ar" ? "rtl" : "ltr";
      if (this.dir == "rtl") {
        this.revDir = "ltr";
      } else if (this.dir == "ltr") {
        this.revDir = "rtl";
      }
    });


    this.translate
      .get([
        "FORGETPASSWORD_LABEL",
        "LOGIN_PAGE_SUBTITLE",
        "LOGIN_PAGE_TITLE",
        "EMAIL_LABEL",
        "EMAIL_PLACEHOLDER",
        "PASSWORD_LABEL",
        "PASSWORD_PLACEHOLDER",
        "LOGIN_PAGE_LABEL",
        "FACEBOOK_REGISTER_BUTTON",
        "GOOGLE_PLUS_REGISTER_BUTTON",
        "REGISTER_PAGE_LABEL",
        "REGISTERATION_QUESTION"
      ])
      .subscribe(values => {
        this.data.forgotPassword = values.FORGETPASSWORD_LABEL;
        this.data.subtitle = values.LOGIN_PAGE_SUBTITLE;
        this.data.title = values.LOGIN_PAGE_TITLE;
        this.data.labelEmail = values.EMAIL_LABEL;
        this.data.email = values.EMAIL_PLACEHOLDER;
        this.data.labelPassword = values.PASSWORD_LABEL;
        this.data.password = values.PASSWORD_PLACEHOLDER;
        this.data.login = values.LOGIN_PAGE_LABEL;
        this.data.facebook = values.FACEBOOK_REGISTER_BUTTON;
        this.data.GooglePlus = values.GOOGLE_PLUS_REGISTER_BUTTON;
        this.data.register = values.REGISTER_PAGE_LABEL;
        this.data.registerationQuestion = values.REGISTERATION_QUESTION;
      });

    let result_translation = new ValidationSupplier(translate);
    this.validations = result_translation.getValidationMessages();

    this.loginform = this.formBuilder.group({
      email: [""],
      password: [""]
    });
  }


  ngOnInit(): void {
    this.events.subscribe('logout:clicked', () => {
      this.fb.logout();
      this.googlePlus.logout();
    })
  }

  ionViewDidLoad() {
    console.log("ionViewDidLoad DhnLoginPage");
  }

  onForgetPassword(event) {
    console.log(event);
  }

  onLogin(event) {
    this.spinnerDialog.show();

    this.DataService.Post(`${Url.SecurityLocalTunnul()}/token`, null, null, {
      grant_type: "password",
      client_id: "dothelpnation",
      client_secret: "**dothelpmobile",
      password: this.password,
      username: this.email
    }).subscribe(accessToken => {
      this.DataService.Get(`${Url.ApiUrlLocalTunnul()}/GetLoginedUser`, {
        Email: this.email
      }).subscribe(UserData => {

        var access_token_auth = {
          access_token: accessToken.access_token,
          expires_in: accessToken.expires_in,
          token_type: accessToken.token_type
        };

        this.spinnerDialog.hide();
        this.storage.set("access_token", access_token_auth);
        this.storage.set('Profile_Data', UserData);
        VolatileStorage.setData(UserData);
        this.navCtrl.setRoot("DhnHomeTabsPage");
      });
    }, (err) => {
      if (err.status == 400) {
        this.spinnerDialog.hide();
        let alert = this.alertCtrl.create({
          title: 'Login Error',
          subTitle: 'Password or username is incorrect .',
          buttons: [
            {
              text: 'try again',
              role: 'cancel',
              handler: () => {
                this.email = "";
                this.password = "";
              }
            }
          ]
        });

        alert.present();
      }
    });
  }

  onFaceBookLogin(event) {
    this.fb
      .login(["public_profile", "email"])
      .then((res: FacebookLoginResponse) => {
        if (res.status == "connected") {
          this.getUserDestailsFBGraphCall(res.authResponse.userID);
        }
      })
      .catch(e => console.log(e));
  }

  onGoogleLogin(event) {
    this.googlePlus.login({})
      .then((res) => {
        let newUserData = {
          name: res.displayName,
          mobile: "",
          age: "",
          email: res.email,
          password: "***",
          photo: res.imageUrl,
          created_at: new Date(),
          updated_at: null
        }

        this.spinnerDialog.show();
        this.DataService.Post(`${Url.ApiUrlLocalTunnul()}/CraeteUser`, null, null, newUserData).subscribe((x) => {
          if (x) {
            this.DataService.Post(`${Url.SecurityLocalTunnul()}/token`, null, null, {
              "grant_type": "password",
              "client_id": "dothelpnation",
              "client_secret": "**dothelpmobile",
              "password": "***",
              "username": res.email
            }).subscribe((accessToken) => {
              var access_token_auth = {
                "access_token": accessToken.access_token,
                "expires_in": accessToken.expires_in,
                "token_type": accessToken.token_type
              };

              this.spinnerDialog.hide();
              this.storage.set('access_token', access_token_auth);
              this.storage.set('Profile_Data', newUserData);
              VolatileStorage.setData(newUserData);
              this.navCtrl.setRoot('DhnHomeTabsPage', { data: newUserData });
            })
          }
        });

      })
      .catch(err => console.error(err));
  }

  onRedierctToRegister(event) {
    this.navCtrl.push("DhnRegisterPage");
  }

  onEvent(event) {
    console.log(event);
  }

  // Private Methods
  getUserDestailsFBGraphCall(userId) {
    this.fb
      .api("/" + userId + "/?fields=id,email,name,picture", [
        "public_profile",
        "email"
      ])
      .then(res => {
        let newUserData = {
          name: res.name,
          mobile: "",
          age: "",
          email: res.email,
          password: "***",
          photo: "https://graph.facebook.com/" + userId + "/picture?type=large",
          created_at: new Date(),
          updated_at: null
        }

        this.spinnerDialog.show();
        this.DataService.Post(`${Url.ApiUrlLocalTunnul()}/CraeteUser`, null, null, newUserData).subscribe((x) => {
          if (x) {
            this.DataService.Post(`${Url.SecurityLocalTunnul()}/token`, null, null, {
              "grant_type": "password",
              "client_id": "dothelpnation",
              "client_secret": "**dothelpmobile",
              "password": "***",
              "username": res.email
            }).subscribe((accessToken) => {
              var access_token_auth = {
                "access_token": accessToken.access_token,
                "expires_in": accessToken.expires_in,
                "token_type": accessToken.token_type
              };

              this.spinnerDialog.hide();
              this.storage.set('access_token', access_token_auth);
              this.storage.set('Profile_Data', newUserData);
              VolatileStorage.setData(newUserData);
              this.navCtrl.setRoot('DhnHomeTabsPage');
            })
          }
        });
        console.log(res);
      })
      .catch(e => {
        console.log(e);
      });
  }
}
