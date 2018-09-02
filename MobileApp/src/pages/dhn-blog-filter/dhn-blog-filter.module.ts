import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { DhnBlogFilterPage } from './dhn-blog-filter';

@NgModule({
  declarations: [
    DhnBlogFilterPage,
  ],
  imports: [
    IonicPageModule.forChild(DhnBlogFilterPage),
  ],
  exports : [
    DhnBlogFilterPage
  ]
})
export class DhnBlogFilterPageModule {}
