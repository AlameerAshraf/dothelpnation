import { AbstractControl } from "@angular/forms";


export class PasswordMatchingValidation {
  static passwordConfirming(c: AbstractControl): { invalid: boolean } {
    if (c.get('password').value !== c.get('confirmpassword').value) {
      return { invalid: true };
    }
  }
}
