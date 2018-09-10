import { NgModule, CUSTOM_ELEMENTS_SCHEMA } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { DhnBlogCraetePage } from './dhn-blog-craete';
import { AgmCoreModule } from '@agm/core';

@NgModule({
  declarations: [
    DhnBlogCraetePage,
  ],
  imports: [
    AgmCoreModule.forRoot({apiKey : "AIzaSyA4-GoZzOqYTvxMe52YQZch5JaCFN6ACLg"}),
    IonicPageModule.forChild(DhnBlogCraetePage),
  ],
  exports: [
    DhnBlogCraetePage
  ],
  schemas : [CUSTOM_ELEMENTS_SCHEMA]
})
export class DhnBlogCraetePageModule {}
