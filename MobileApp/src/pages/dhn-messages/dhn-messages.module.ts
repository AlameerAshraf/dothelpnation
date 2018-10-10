import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { DhnMessagesPage } from './dhn-messages';

import { VolatileStorage } from '../../CoreAssestiveModules/VolatileStorage';
import { Url } from '../../CoreAssestiveModules/Url';
import { SignalRModule, SignalRConfiguration } from 'ng2-signalr';


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
    DhnMessagesPage,
  ],
  imports: [
    IonicPageModule.forChild(DhnMessagesPage),
    SignalRModule.forRoot(createConfig)
  ],
  exports : [
    DhnMessagesPage
  ]
})
export class DhnMessagesPageModule {}
