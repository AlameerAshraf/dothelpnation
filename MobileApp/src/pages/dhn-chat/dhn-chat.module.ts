import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { DhnChatPage } from './dhn-chat';

@NgModule({
  declarations: [
    DhnChatPage,
  ],
  imports: [
    IonicPageModule.forChild(DhnChatPage),
  ],
  exports : [
    DhnChatPage
  ]
})
export class DhnChatPageModule {}
