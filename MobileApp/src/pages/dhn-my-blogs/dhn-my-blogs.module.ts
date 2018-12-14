import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { DhnMyBlogsPage } from './dhn-my-blogs';

@NgModule({
  declarations: [
    DhnMyBlogsPage,
  ],
  imports: [
    IonicPageModule.forChild(DhnMyBlogsPage),
  ],
})
export class DhnMyBlogsPageModule {}
