import { VolatileStorage } from '../../CoreAssestiveModules/VolatileStorage';
import { Url } from '../../CoreAssestiveModules/Url';

import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { DhnHomeTabsPage } from './dhn-home-tabs';

import { SignalRModule, SignalRConfiguration } from 'ng2-signalr';



// signalR Connections  
export function createConfig(): SignalRConfiguration {
  const c = new SignalRConfiguration();
  c.hubName = 'chatHub';
  c.qs = { loggedInUserEmail: VolatileStorage.getData().email };
  c.url = `${Url.SecurityLocalTunnul()}/dothelpnationchat/hubs`;
  c.logging = true;
  c.executeEventsInZone = true; 
  c.executeErrorsInZone = false; 
  c.executeStatusChangeInZone = true; 
  return c;
}



@NgModule({
  declarations: [
    DhnHomeTabsPage,
  ],
  imports: [
    IonicPageModule.forChild(DhnHomeTabsPage),
    SignalRModule.forRoot(createConfig)
  ],
  exports : [
    DhnHomeTabsPage
  ]
})
export class DhnHomeTabsPageModule {}
