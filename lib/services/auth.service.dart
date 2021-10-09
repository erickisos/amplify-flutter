import 'dart:async';

import 'package:amplify_test/models/auth.model.dart';
import 'package:amplify_test/models/signup.model.dart';

enum AuthFlowStatus { login, signUp, verification, session }

class AuthState {
  final AuthFlowStatus authStatus;

  AuthState({required this.authStatus});
}

class AuthService {
  final authStateController = StreamController<AuthState>();

  void showSignUp() {
    final state = AuthState(authStatus: AuthFlowStatus.signUp);
    authStateController.add(state);
  }

  void showLogin() {
    final state = AuthState(authStatus: AuthFlowStatus.login);
    authStateController.add(state);
  }

  void loginWithCredentials(AuthCredentials credentials) {
    final state = AuthState(authStatus: AuthFlowStatus.session);
    authStateController.add(state);
  }

  void signUpWithCredentials(SignUpCredentials credentials) {
    final state = AuthState(authStatus: AuthFlowStatus.verification);
    authStateController.add(state);
  }
}
