import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SignUpPageState();
  }
}

class SignUpPageState extends State<SignUpPage> {
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.symmetric(
          horizontal: 40,
        ),
        child: Stack(children: [
          signUpForm(),
          Container(
            alignment: Alignment.bottomCenter,
            child: TextButton(
              onPressed: () {},
              child: Text('Already have an account? Login.'),
            ),
          )
        ]),
      ),
    );
  }

  Widget signUpForm() {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      TextField(
        controller: _usernameController,
        decoration: InputDecoration(
          icon: Icon(
            Icons.person,
          ),
          labelText: 'Username',
        ),
      ),
      TextField(
        controller: _emailController,
        decoration: InputDecoration(
          icon: Icon(
            Icons.email,
          ),
          labelText: 'Email',
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
        onPressed: signUp,
        child: Text('Registrarse'),
      )
    ]);
  }

  void signUp() {
    final username = _usernameController.text.trim();
    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();

    print('User: $username');
    print('Email: $email');
    print('Password: $password');
  }
}
