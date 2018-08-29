import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { DhnSettingsPage } from './dhn-settings';

@NgModule({
  declarations: [
    DhnSettingsPage,
  ],
  imports: [
    IonicPageModule.forChild(DhnSettingsPage),
  ],
  exports : [
    DhnSettingsPage
  ]
})
export class DhnSettingsPageModule {}
