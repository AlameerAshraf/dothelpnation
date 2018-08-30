import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { DhnProfilePage } from './dhn-profile';

@NgModule({
  declarations: [
    DhnProfilePage,
  ],
  imports: [
    IonicPageModule.forChild(DhnProfilePage),
  ],
  exports : [
    DhnProfilePage
  ]
})
export class DhnProfilePageModule {}
