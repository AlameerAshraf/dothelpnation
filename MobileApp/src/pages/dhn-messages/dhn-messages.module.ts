import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { DhnMessagesPage } from './dhn-messages';

@NgModule({
  declarations: [
    DhnMessagesPage,
  ],
  imports: [
    IonicPageModule.forChild(DhnMessagesPage),
  ],
  exports : [
    DhnMessagesPage
  ]
})
export class DhnMessagesPageModule {}
