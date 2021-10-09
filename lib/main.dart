import 'package:amplify_test/pages/login.page.dart';
import 'package:amplify_test/pages/signup.page.dart';
import 'package:amplify_test/services/auth.service.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AppState();
}

class AppState extends State<MyApp> {
  final authService = AuthService();

  @override
  void initState() {
    super.initState();
    authService.showLogin();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amplify Test',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: StreamBuilder<AuthState>(
        stream: authService.authStateController.stream,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Navigator(
              pages: [
                if (snapshot.data!.authStatus == AuthFlowStatus.login)
                  MaterialPage(
                    child: LoginPage(
                      shouldShowSignUp: authService.showSignUp,
                    ),
                  ),
                if (snapshot.data!.authStatus == AuthFlowStatus.signUp)
                  MaterialPage(
                    child: SignUpPage(
                      shouldShowLogin: authService.showLogin,
                    ),
                  ),
              ],
              onPopPage: (route, result) => route.didPop(result),
            );
          } else {
            return Container(
              alignment: Alignment.center,
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
