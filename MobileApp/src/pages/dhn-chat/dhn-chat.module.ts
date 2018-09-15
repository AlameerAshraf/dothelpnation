import { Url } from './../../CoreAssestiveModules/Url';
import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { DhnChatPage } from './dhn-chat';

import { VolatileStorage } from '../../CoreAssestiveModules/VolatileStorage';

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
    DhnChatPage,
  ],
  imports: [
    IonicPageModule.forChild(DhnChatPage),
    SignalRModule.forRoot(createConfig)
  ],
  exports : [
    DhnChatPage
  ]
})
export class DhnChatPageModule {}
