import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.symmetric(horizontal: 40),
        child: Stack(
          children: [
            _loginForm(),
            Container(
              alignment: Alignment.bottomCenter,
              child: TextButton(
                onPressed: () {},
                child: Text("Don't have an account? Sign up."),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _loginForm() {
    return Column(
      children: [
        TextField(
          controller: _usernameController,
          decoration: InputDecoration(
            icon: Icon(
              Icons.mail,
            ),
            labelText: 'Usuario',
          ),
        ),
        TextField(
          controller: _passwordController,
          decoration: InputDecoration(
            icon: Icon(Icons.lock_open),
            labelText: 'Contraseña',
          ),
          obscureText: true,
          keyboardType: TextInputType.visiblePassword,
        ),
        TextButton(
          onPressed: login,
          child: Text("Login"),
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.center,
    );
  }

  void login() {
    final username = _usernameController.text.trim();
    final password = _passwordController.text.trim();

    print('User: $username');
    print('Password: $password');
  }
}
