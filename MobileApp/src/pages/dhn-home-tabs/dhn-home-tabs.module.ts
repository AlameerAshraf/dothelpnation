import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { DhnHomeTabsPage } from './dhn-home-tabs';

@NgModule({
  declarations: [
    DhnHomeTabsPage,
  ],
  imports: [
    IonicPageModule.forChild(DhnHomeTabsPage),
  ],
  exports : [
    DhnHomeTabsPage
  ]
})
export class DhnHomeTabsPageModule {}
