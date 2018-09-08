import { AgmCoreModule } from '@agm/core';
import { NgModule, CUSTOM_ELEMENTS_SCHEMA } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { DhnBlogViewPage } from './dhn-blog-view';

@NgModule({
  declarations: [
    DhnBlogViewPage,
  ],
  imports: [
    AgmCoreModule.forRoot({apiKey : "AIzaSyA4-GoZzOqYTvxMe52YQZch5JaCFN6ACLg"}),
    IonicPageModule.forChild(DhnBlogViewPage),
  ],
  exports : [
    DhnBlogViewPage
  ] ,
  schemas : [CUSTOM_ELEMENTS_SCHEMA]
})
export class DhnBlogViewPageModule {}
