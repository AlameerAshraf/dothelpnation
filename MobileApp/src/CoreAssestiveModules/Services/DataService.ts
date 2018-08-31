import { IDataService } from './IDataService';

import { Injectable } from '@angular/core';
import { Http, Headers, RequestOptions } from '@angular/http';
import { Observable } from 'rxjs/Observable';

import 'rxjs/add/operator/catch';
import 'rxjs/add/observable/throw';
import { map } from 'rxjs/operators';
import { HttpHeaders } from '@angular/common/http';

// import { URLs } from '../URLs';
// import { CacheHelper } from '../CacheHelper';

@Injectable()
export class DataService implements IDataService {

    options: RequestOptions;
    constructor(private http: Http) {
        let headers = new Headers();
        // headers.append('access_token', CacheHelper.get("access_token"));
        this.options = new RequestOptions({ headers: headers });
    }



  Get(url: string, models?: any , access_token?: any) {
    var Request_headers = new Headers();
    if(access_token != ""){
      Request_headers.append("Authorization", "Bearer " + access_token)
    }
    var requestUrl = this.GenerateUrl(url, models);
    return this.http.get(requestUrl, {headers : Request_headers }).pipe(map((res) => {
      try {
        return res.json();
      } catch (error) {
        return this.ErrorHandler(error);
      }
    }))
      .catch((Error: Response) => {
        return this.ErrorHandler(Error);
      });
  }

  Post(url: string, entity?: any, params?: any , options? : any) {
    let _options: RequestOptions;

    if (options != null) {
      let body = new URLSearchParams();
      for (var key in options) {
        if (options.hasOwnProperty(key)) {
          body.set(key, options[key]);
        }
      }
      let _options = {
        headers: new HttpHeaders().set('Content-Type', 'application/x-www-form-urlencoded')
      };
      entity = body.toString();
    }

    var requestUrl = this.GenerateUrl(url, params);
    return this.http.post(requestUrl, entity, _options).pipe(map((res) => {
      try {
        return res.json();
      } catch (error) {

        return this.ErrorHandler(error);
      }
    }))
      .catch((Error: Response) => {
        return this.ErrorHandler(Error);
      });
  }

  Put(url: string, params?: any, entity?: any) {
    var requestUrl = this.GenerateUrl(url, params);

    return this.http.put(requestUrl, entity, this.options).pipe(map((res) => {
      try {
        return res.json();
      } catch (error) {
        return this.ErrorHandler(error);
      }
    }))
      .catch((Error: Response) => {
        return this.ErrorHandler(Error);
      });
  }


    // Generating the Request url ..
    private GenerateUrl(url: string, params: any) {

        var requestUrl: string;
        requestUrl = `${url}?`;

        for (const param in params) {
            if (params.hasOwnProperty(param)) {
                const value = params[param];
                requestUrl += `${param}=${value}&`
            }
        }
        requestUrl = requestUrl.slice(0, -1);
        return requestUrl;
    }

    // Global Error Handler
    private ErrorHandler(Error: Response) {
        if (Error.status === 404) {
            return Observable.throw(Error);
        }
        else if (Error.status === 403) {
            return Observable.throw(Error);
        }
        else {
            return Observable.throw(Error);
        }
    }
}
