import { LoadingController } from 'ionic-angular';
import { Injectable } from '@angular/core';

@Injectable()
export class LoadingService {
  loading: any;

  constructor(private loadingCtrl: LoadingController) {

  }

  show(label) {
    this.loading = this.loadingCtrl.create({
      content: label+"..."
    });
    this.loading.present();
  }

  hide() {
    this.loading.dismiss();
  }
}
