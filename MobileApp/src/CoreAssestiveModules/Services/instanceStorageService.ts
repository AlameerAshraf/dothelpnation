import { Injectable } from "@angular/core";
import { Subject, BehaviorSubject } from "rxjs";


@Injectable()
export class instanceStorageService {
    
    private signalRConnectionInstance = new BehaviorSubject<any>({});
    SignalRConnectionDelivery = this.signalRConnectionInstance.asObservable();


    deliverSignalRInstance(connectionInstance){
        this.signalRConnectionInstance.next(connectionInstance);
    }



}