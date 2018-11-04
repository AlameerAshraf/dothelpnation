import { TranslateService } from "@ngx-translate/core";

export class ValidationSupplier {

   validationModel: any = {
    'Username' : {
      required : ""
    } ,
    'Age' : {
      required : ""
    } ,
    'Phone' : {
      required : "",
      length: ""
    } ,
    'Eamil' : {
      required : "",
      format : ""
    } ,
    'Password' : {
      required : "",
      length : "" ,
      format : ""
    } ,
    'ConfirmPassword' : {
      required : "",
      matching : ""
    }
  };

  constructor(private translate: TranslateService){
    this.translateErrors();

  }


  translateErrors(){
    this.translate.get(
      ['REQUIRED_ERROR' , 'PHONE_LENGTH' , 'EMAIL_FORMAT',
      'PASWORD_FORMAT' , 'PASWORD_LENGTH' , 'CONFIRMPASWORD_MATCHING'])
    .subscribe((values) => {
      this.validationModel.Username.required = values.REQUIRED_ERROR;
      this.validationModel.Age.required = values.REQUIRED_ERROR;

      this.validationModel.Phone.required = values.REQUIRED_ERROR;
      this.validationModel.Phone.length = values.PHONE_LENGTH;

      this.validationModel.Eamil.required = values.REQUIRED_ERROR;
      this.validationModel.Eamil.format = values.EMAIL_FORMAT;

      this.validationModel.Password.required = values.REQUIRED_ERROR;
      this.validationModel.Password.length = values.PASWORD_LENGTH;
      this.validationModel.Password.format = values.PASWORD_FORMAT;

      this.validationModel.ConfirmPassword.required = values.REQUIRED_ERROR;
      this.validationModel.ConfirmPassword.matching = values.CONFIRMPASWORD_MATCHING;
    });
  }


  getValidationMessages() {
    return this.validationModel;
  }
}
