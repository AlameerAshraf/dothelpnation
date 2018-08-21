import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { DhnRegisterPage } from './dhn-register';

@NgModule({
  declarations: [
    DhnRegisterPage,
  ],
  imports: [
    IonicPageModule.forChild(DhnRegisterPage),
  ],
  exports : [
    DhnRegisterPage
  ]
})
export class DhnRegisterPageModule {}
