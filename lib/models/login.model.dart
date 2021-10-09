import 'package:amplify_test/models/auth.model.dart';

class LoginCredentials extends AuthCredentials {
  LoginCredentials({required String username, required String password})
      : super(username: username, password: password);
}
