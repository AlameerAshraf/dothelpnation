import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { DhnBlogsPage } from './dhn-blogs';
import { TimeAgoPipe } from 'time-ago-pipe';

@NgModule({
  declarations: [
    DhnBlogsPage,
    TimeAgoPipe
  ],
  imports: [
    IonicPageModule.forChild(DhnBlogsPage),
  ],
  exports : [
    DhnBlogsPage
  ]
})
export class DhnBlogsPageModule {}
