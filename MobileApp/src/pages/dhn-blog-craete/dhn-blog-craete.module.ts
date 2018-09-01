import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { DhnBlogCraetePage } from './dhn-blog-craete';

@NgModule({
  declarations: [
    DhnBlogCraetePage,
  ],
  imports: [
    IonicPageModule.forChild(DhnBlogCraetePage),
  ],
  exports: [
    DhnBlogCraetePage
  ]
})
export class DhnBlogCraetePageModule {}
