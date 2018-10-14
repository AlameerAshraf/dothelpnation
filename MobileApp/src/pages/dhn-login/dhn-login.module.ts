import { NgModule } from '@angular/core';
import { TranslateModule } from '@ngx-translate/core';
import { IonicPageModule } from 'ionic-angular';


import { DhnLoginPage } from './dhn-login';

@NgModule({
  declarations: [
    DhnLoginPage,
  ],
  imports: [
    IonicPageModule.forChild(DhnLoginPage),
    TranslateModule.forChild(),
  ],
  exports: [
    DhnLoginPage
  ]
})
export class DhnLoginPageModule {}
