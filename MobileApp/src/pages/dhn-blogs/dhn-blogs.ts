import { Url } from './../../CoreAssestiveModules/Url';
import { DataService } from './../../CoreAssestiveModules/Services/DataService';
import { Component, OnInit, OnDestroy, AfterViewInit } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { LoadingService } from '../../CoreAssestiveModules/Services/LoadingService';
import { Storage } from '@ionic/storage';



@IonicPage()
@Component({
  selector: 'page-dhn-blogs',
  templateUrl: 'dhn-blogs.html',
})
export class DhnBlogsPage implements AfterViewInit {
  ngAfterViewInit(): void {
    console.error ("As")
  }



  data = null;
  access_token: string;

  constructor(public navCtrl: NavController, 
    private DataService: DataService,
    public navParams: NavParams,
    private storage: Storage,
    private LoadingService: LoadingService) {
      this.storage.get('access_token').then((SECURITY_DATA) => {
        this.access_token = SECURITY_DATA.access_token;
      })
  
      let DataRequest = this.DataService.Get(`${Url.ApiUrlLocalTunnul()}/GetBlogs`, null , "S40uEvGMFnWAsP40hxbwpraqVie-pcONUCJGu7Y2lkeYVoQGDeK9VQZ8WAJfd9QFql63rvSomwxmxJhl8RWLerFBTQKjdGAUlphLmML7CcrqOFrEnKiwGBfB_jhzPlPVQHY37murtjt61ile9vDP-ejdfx-C5BBa4FlD6HooWnCrVwGKeaz0aJLrAkcwiV0YKitcP-yhnq1F22kOMZemYwZH0rn-3J3NdmRh1DUebo2LQJuXQ29G_yMoPt_Hyfrk5irYgtOCNYJtU99_69-o9ebYB4_MHp1atSiZYJS74cA").subscribe((data) => {
        console.log(data);
  
      });
  }

  ngOnInit(): void {
    console.warn("As")
   
  }

  ionViewDidLoad() {
    console.warn("As")
 
  }

  ionViewDidEnter(){
    console.log("jbdsbvnidvbnivbs'zubo")
  }

  ionViewCanEnter(){
    console.log("syiebf237b9yv scbayv2 efbicb clegv pbin")
  }



}
