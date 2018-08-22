import { PasswordMatchingValidation } from './../../CoreAssestiveModules/forms/PasswordMatchingValidation';
import { ValidationSupplier } from './../../CoreAssestiveModules/forms/ValidationSupplier';
import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { TranslateService } from '@ngx-translate/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';


@IonicPage()
@Component({
  selector: 'page-dhn-register',
  templateUrl: 'dhn-register.html',
})
export class DhnRegisterPage {
  dir: string = 'rtl';
  data = {
    forgotPassword : "" ,
    subtitle : "" ,
    title : "" ,
    labelUsername : "" ,
    username : "" ,
    lableAge : "" ,
    age : "",
    lablePassword : "",
    password : "",
    lableConfirmPassword : "" ,
    confirmpassword:"",
    lableEmail : "" ,
    email : "",
    lablePhone : "" ,
    phone : "",
    register : "",
    backtologin : "",
    logo : 'assets/img/2.png'
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
    public navParams: NavParams,
    private translate: TranslateService,
    private formBuilder: FormBuilder) {
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
    console.log(this.validations);
    this.registerForm = this.formBuilder.group({
      username : ['' , Validators.required],
      age: ['' , Validators.required],
      email : ['' , Validators.compose([
        Validators.required ,
        Validators.pattern("[a-zA-Z0-9.-_]{1,}@[a-zA-Z.-]{2,}[.]{1}[a-zA-Z]{2,}")
      ])],
      phone : ['' , Validators.compose([
        Validators.required ,
        Validators.maxLength(11),
        Validators.minLength(11)
      ])],
      passwords : formBuilder.group({
        password : ['',Validators.compose([
          Validators.required,
          Validators.pattern('((?=.*\\d)(?=.*[a-z])(?=.*[A-Z]).{6,})')
        ])],
        confirmpassword : ['',Validators.required]
      } , {Validator : PasswordMatchingValidation})
    });


  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad DhnRegisterPage');
  }
  onRegister(event){
    console.log(event);
  }


}
