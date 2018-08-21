import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';


@IonicPage()
@Component({
  selector: 'page-dhn-register',
  templateUrl: 'dhn-register.html',
})
export class DhnRegisterPage {

  data = {
    forgotPassword : "forgot Password" ,
    subtitle : "Welcome To dothelpnation" ,
    title : "Login to your account" ,

    labelUsername : "Username" ,
    username : "Username" ,
    lableAge : "Age" ,
    age : "Age",
    lablePassword : "Password",
    password : "Password",
    lableConfirmPassword : "Confirm Password" ,
    confirmpassword:"Cofirm Password",

    lableEmail : "Email" ,
    email : "email",
    lablePhone : "Phone" ,
    phone : "Phone",

    register : "register",
    backtologin : "Back to login",
    logo : 'assets/img/2.png'
  };

  username: string;
  password: string;
  age: number;
  phone: string;
  email: string;
  confirmpassword: string;

  constructor(public navCtrl: NavController, public navParams: NavParams) {
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad DhnRegisterPage');
  }
  onRegister(event){
    console.log(event);
  }

}
