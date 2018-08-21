  import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';


@IonicPage()
@Component({
  selector: 'page-dhn-login',
  templateUrl: 'dhn-login.html',
})
export class DhnLoginPage {

  data = {
    forgotPassword : "forgot Password" ,
    subtitle : "Welcome To dothelpnation" ,
    title : "Login to your account" ,
    labelUsername : "Username" ,
    username : "Username" ,
    labelPassword : "Password",
    password : "Password",
    login : "login" ,
    register : "register",
    logo : 'assets/img/2.png'
  };

  username: string;
  password: string;

  constructor(public navCtrl: NavController, public navParams: NavParams) {
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad DhnLoginPage');
  }

  onForgetPassword(event){
    console.log(event);
  }

  onLogin(event){
    console.log(event);
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
