import 'package:amplify_test/models/auth.model.dart';

class SignUpCredentials extends AuthCredentials {
  final String email;

  SignUpCredentials(
      {required String username, required String password, required this.email})
      : super(username: username, password: password);
}
