export interface IDataService {
  Get(url:string  , models?: any , access_token?: any);
  Post(url: string, access_token?: any, params?: any , entity? : any);
  Put(url:string ,models?: any ,entity? :any );
}
