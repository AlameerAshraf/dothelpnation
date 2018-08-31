import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { DhnBlogsPage } from './dhn-blogs';

@NgModule({
  declarations: [
    DhnBlogsPage,
  ],
  imports: [
    IonicPageModule.forChild(DhnBlogsPage),
  ],
  exports : [
    DhnBlogsPage
  ]
})
export class DhnBlogsPageModule {}
