import 'package:doc_center/core/utils/app_regx.dart';

class ValidatorHandler {

  ValidatorHandler._();

  static String? emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    } else if (!AppRegx.isEmailValid(value)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  static String? passwordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }else if(!AppRegx.hasLowerCase(value)){
      return 'Password must contain at least one lower case letter';
    }else if (!AppRegx.hasUpperCase(value)){
      return 'Password must contain at least one upper case letter';
    }else if (!AppRegx.hasDigit(value)){
      return 'Password must contain at least one digit';
    }else if(!AppRegx.hasSpecialChar(value)){
      return 'Password must contain at least one special character';
    }else if(!AppRegx.hasMinLength(value)){
      return 'Password must be at least 8 characters long';
    }
    return null;
  }

}