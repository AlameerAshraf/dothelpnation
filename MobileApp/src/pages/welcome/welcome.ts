import { Component } from '@angular/core';
import { IonicPage, NavController } from 'ionic-angular';
import { Facebook, FacebookLoginResponse } from '@ionic-native/facebook';

@IonicPage()
@Component({
  selector: 'page-welcome',
  templateUrl: 'welcome.html'
})
export class WelcomePage {

  constructor(public navCtrl: NavController , private fb : Facebook) { }

  login() {
    this.navCtrl.push('LoginPage');
  }

  signup() {
    this.navCtrl.push('SignupPage');
  }

  FBlogin(){
    console.log("Hey")
    this.fb.login(['public_profile', 'user_friends', 'email'])
    .then((res:FacebookLoginResponse) => {console.log(res)})
    .catch(e => console.log(e));
  }

  Glogin(){

  }
}
