import { Storage } from '@ionic/storage';
import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { TranslateService } from '@ngx-translate/core';
import { ValidationSupplier } from './../../CoreAssestiveModules/forms/ValidationSupplier';
import { FormGroup, FormBuilder } from '@angular/forms';
import { Url } from '../../CoreAssestiveModules/Url';
import { DataService } from '../../CoreAssestiveModules/Services/DataService';

@IonicPage()
@Component({
  selector: 'page-dhn-login',
  templateUrl: 'dhn-login.html',
})
export class DhnLoginPage {
  dir: string = 'ltr';
  revDir: string;
  data = {
    forgotPassword : "" ,
    subtitle : "" ,
    title : "" ,
    labelEmail: "" ,
    email : "" ,
    labelPassword : "",
    password : "",
    login : "" ,
    facebook : "" ,
    GooglePlus: "",
    register : "",
    logo : 'assets/img/2.png'
  };

  email: string;
  password: string;

  validations = {};
  loginform: FormGroup;

  constructor(public navCtrl: NavController,
    public navParams: NavParams ,
    private storage: Storage,
    private DataService: DataService,
    private translate: TranslateService ,
    private formBuilder: FormBuilder) {
      this.translate.get([
        'FORGETPASSWORD_LABEL' , 'LOGIN_PAGE_SUBTITLE' , 'LOGIN_PAGE_TITLE' , 'EMAIL_LABEL' ,
        'EMAIL_PLACEHOLDER' , 'PASSWORD_LABEL' , 'PASSWORD_PLACEHOLDER' , 'LOGIN_PAGE_LABEL' ,
        'FACEBOOK_REGISTER_BUTTON' , 'GOOGLE_PLUS_REGISTER_BUTTON' , 'REGISTER_PAGE_LABEL'
      ]).subscribe((values) =>{
        if(this.dir == "rtl"){
          this.revDir = "ltr"
        } else if (this.dir == "ltr"){
          this.revDir = "rtl";
        }
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
      });

    let result_translation = new ValidationSupplier(translate);
    this.validations = result_translation.getValidationMessages();

    this.loginform =  this.formBuilder.group({
      email :[''] ,
      password : ['']
    });


  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad DhnLoginPage');
  }

  onForgetPassword(event){
    console.log(event);
  }

  onLogin(event) {
    this.DataService.Post(`${Url.SecurityLocalTunnul()}/token`, null, null, {
      "grant_type": "password",
      "client_id": "dothelpnation",
      "client_secret": "**dothelpmobile",
      "password": this.password,
      "username": this.email
    }).subscribe((accessToken) => {
      this.DataService.Get(`${Url.ApiUrlLocalTunnul()}/GetLoginedUser` , {Email : this.email})
      .subscribe((UserData) => {
        console.log(UserData);
        var access_token_auth = {
          "access_token": accessToken.access_token,
          "expires_in": accessToken.expires_in,
          "token_type": accessToken.token_type
        };
        this.storage.set('access_token', access_token_auth);
        this.navCtrl.setRoot('DhnHomeTabsPage' , UserData);
      })

    })
  }

  onFaceBookLogin(event){
    console.log(event);
  }

  onGoogleLogin(event){
    console.log(event);
  }

  onRedierctToRegister(event){
    this.navCtrl.push('DhnRegisterPage');
  }

  onEvent(event){
    console.log(event);
  }

}
