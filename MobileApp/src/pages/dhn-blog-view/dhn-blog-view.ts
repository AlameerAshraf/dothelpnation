import { Component, ViewChild } from '@angular/core';
import { IonicPage, NavController, NavParams, Content } from 'ionic-angular';

@IonicPage()
@Component({
  selector: 'page-dhn-blog-view',
  templateUrl: 'dhn-blog-view.html',
})
export class DhnBlogViewPage {

  data
  active: boolean =  false

  constructor() {
    this.data = {
      "headerTitle": "News",
      "headerImage": "/assets/img/nin-live.png",
      "title": "Infinit bridge made in China. Locals said that is not possible to see end of bridge. 7 people lost during walk.",
      "subtitle": "by Name Surname",
      "category": "ENGINEERING",
      "avatar": "assets/images/avatar/3.jpg",
      "shareIcon": "more",
      "items": [
        {
          "id": 1,
          "title": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
          "subtitle": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."
        },
        {
          "id": 2,
          "title": "Lorem ipsum dolor sit amet",
          "subtitle": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."
        },
        {
          "id": 3,
          "title": "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
          "subtitle": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip."
        },
        {
          "id": 4,
          "title": "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
          "subtitle": "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry ut labore et dolore magna aliqua. Ut enim ad minim veniam."
        }
      ],
      "map": {
        "lat": 40.712562,
        "lng": -74.005911,
        "zoom": 15,
        "mapTypeControl": true,
        "streetViewControl": true
    }
    };
  }




}
