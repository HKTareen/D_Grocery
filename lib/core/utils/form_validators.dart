import 'package:form_field_validator/form_field_validator.dart';

class AppValidators {
  static MultiValidator email = MultiValidator([
    EmailValidator(errorText: 'Email address is incorrect'),
    RequiredValidator(errorText: 'Email is required'),
  ]);

  static MultiValidator password = MultiValidator([
    RequiredValidator(errorText: 'Password is required'),
  ]);

  static RequiredValidator required =
      RequiredValidator(errorText: 'This field is required');

  static RequiredValidator requiredWithName(String name) =>
      RequiredValidator(errorText: '$name is required');

  static String? passwordMatcher(String password1, String password2) =>
      MatchValidator(errorText: 'Passwords not matching')
          .validateMatch(password1, password2);
}
