export interface IDataService {
  Get(url:string  , models?: any);
  Post(url:string  , entity? :any );
  Put(url:string ,models?: any ,entity? :any );
}
