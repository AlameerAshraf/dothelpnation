
import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams, AlertController } from 'ionic-angular';
import { TranslateService } from '@ngx-translate/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { NativeStorage } from '@ionic-native/native-storage';
import { Storage } from '@ionic/storage';
import { SpinnerDialog } from '@ionic-native/spinner-dialog';

import { DataService } from '../../CoreAssestiveModules/Services/DataService';
import { VolatileStorage } from '../../CoreAssestiveModules/VolatileStorage';
import { Url } from './../../CoreAssestiveModules/Url';
import { PasswordMatchingValidation } from './../../CoreAssestiveModules/forms/PasswordMatchingValidation';
import { ValidationSupplier } from './../../CoreAssestiveModules/forms/ValidationSupplier';

@IonicPage()
@Component({
  selector: 'page-dhn-register',
  templateUrl: 'dhn-register.html',
})
export class DhnRegisterPage {
  dir: string = 'ltr';
  revDir: string;
  data = {
    forgotPassword: "",
    subtitle: "",
    title: "",
    labelUsername: "",
    username: "",
    lableAge: "",
    age: "",
    lablePassword: "",
    password: "",
    lableConfirmPassword: "",
    confirmpassword: "",
    lableEmail: "",
    email: "",
    lablePhone: "",
    phone: "",
    register: "",
    backtologin: "",
    logo: 'assets/img/2.png'
  };
  validations = {};

  username: string;
  password: string;
  age: number;
  phone: string;
  email: string;
  confirmpassword: string;


  registerForm: FormGroup;



  constructor(public navCtrl: NavController,
    private Storage: Storage,
    public navParams: NavParams,
    private translate: TranslateService,
    private nativeStorage: NativeStorage,
    private formBuilder: FormBuilder,
    private spinnerDialog: SpinnerDialog,
    private alertCtrl: AlertController ,
    private DataService: DataService) {

    this.Storage.get("UserSettings").then(settings => {
      this.dir = settings.def_lang == "ar" ? "rtl" : "ltr";
      if (this.dir == "rtl") {
        this.revDir = "ltr";
      } else if (this.dir == "ltr") {
        this.revDir = "rtl";
      }
    });

    this.translate.get([
      'BACK', 'REGISTER_PAGE_TITLE', 'USERNAME_LABEL', 'REGISTER_BUTTON',
      'PASSWORD_LABEL', 'AGE_LABEL', 'EMAIL_LABEL',
      'FORGETPASSWORD_LABEL', 'PHONE_LABEL', 'PASSWORDCONFIRMATION_LABEL', 'USERNAME_PLACHOLDER',
      'PHONE_PLACEHOLDER', 'AGE_PLACEHOLDER', 'PASSWORD_PLACEHOLDER',
      'PASSWORDCONFIRMATION_PLACEHOLDER', 'EMAIL_PLACEHOLDER'
    ]).subscribe((values) => {
      this.data.backtologin = values.BACK;
      this.data.register = values.REGISTER_BUTTON;
      this.data.title = values.REGISTER_PAGE_TITLE;
      this.data.labelUsername = values.USERNAME_LABEL;
      this.data.lablePassword = values.PASSWORD_LABEL;
      this.data.lableAge = values.AGE_LABEL;
      this.data.lableEmail = values.EMAIL_LABEL;
      this.data.lablePhone = values.PHONE_LABEL; this.data.lableConfirmPassword = values.PASSWORDCONFIRMATION_LABEL;
      this.data.username = values.USERNAME_PLACHOLDER; this.data.phone = values.PHONE_PLACEHOLDER;
      this.data.age = values.AGE_PLACEHOLDER; this.data.password = values.PASSWORD_PLACEHOLDER;
      this.data.confirmpassword = values.PASSWORDCONFIRMATION_PLACEHOLDER; this.data.email = values.EMAIL_PLACEHOLDER;
    });


    let result_translation = new ValidationSupplier(translate);
    this.validations = result_translation.getValidationMessages();

    this.registerForm = this.formBuilder.group({
      username: ['', Validators.required],
      age: ['', Validators.required],
      email: ['', Validators.compose([
        Validators.required,
        Validators.pattern("[a-zA-Z0-9.-_]{1,}@[a-zA-Z.-]{2,}[.]{1}[a-zA-Z]{2,}")
      ])],
      phone: ['', Validators.compose([
        Validators.required,
        Validators.maxLength(11),
        Validators.minLength(11)
      ])],
      passwords: formBuilder.group({
        password: ['', Validators.compose([
          Validators.required,
          Validators.pattern('((?=.*\\d)(?=.*[a-z])(?=.*[A-Z]).{6,})')
        ])],
        confirmpassword: ['', Validators.required]
      }, { Validator: PasswordMatchingValidation })
    });


  }

  onRegister(event) {
    this.spinnerDialog.show();
    var newUserData = {
      name: this.username,
      mobile: this.phone,
      age: this.age,
      email: this.email,
      password: this.password,
      created_at: new Date(),
      updated_at: null
    };

    this.DataService.Post(`${Url.ApiUrlLocalTunnul()}/CraeteUser`, newUserData).subscribe((x) => {
      if (x) {
        this.DataService.Post(`${Url.SecurityLocalTunnul()}/token`, null, null, {
          "grant_type": "password",
          "client_id": "dothelpnation",
          "client_secret": "**dothelpmobile",
          "password": this.password,
          "username": this.email
        }).subscribe((accessToken) => {
          var access_token_auth = {
            "access_token": accessToken.access_token,
            "expires_in": accessToken.expires_in,
            "token_type": accessToken.token_type
          };

          this.spinnerDialog.hide();
          this.Storage.set('access_token', access_token_auth);
          this.Storage.set('Profile_Data', newUserData);
          VolatileStorage.setData(newUserData);
          this.navCtrl.setRoot('DhnHomeTabsPage', newUserData);
        })
      } else {
        this.spinnerDialog.hide(); 

      }
    } , (err) => {
    });
  }


}
