import 'dart:async';

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
}
