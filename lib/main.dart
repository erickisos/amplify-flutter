import 'package:amplify_test/pages/login.page.dart';
import 'package:amplify_test/pages/signup.page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AppState();
}

class AppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amplify Test',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Navigator(
        pages: [
          MaterialPage(child: LoginPage()),
          MaterialPage(child: SignUpPage()),
        ],
        onPopPage: (route, result) => route.didPop(result),
      ),
    );
  }
}
