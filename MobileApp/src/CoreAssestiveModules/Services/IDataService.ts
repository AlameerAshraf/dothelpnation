export interface IDataService {
  Get(url:string  , models?: any , access_token?: any);
  Post(url:string  , entity? :any );
  Put(url:string ,models?: any ,entity? :any );
}
