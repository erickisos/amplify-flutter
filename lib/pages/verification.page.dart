import 'package:flutter/material.dart';

class VerificationPage extends StatefulWidget {
  final ValueChanged<String> didProvideVerificationCode;

  const VerificationPage({Key? key, required this.didProvideVerificationCode})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => VerificationPageState();
}

class VerificationPageState extends State<VerificationPage> {
  final verificationCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.symmetric(horizontal: 40),
        child: verificationForm(),
      ),
    );
  }

  Widget verificationForm() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          controller: verificationCodeController,
          decoration: InputDecoration(
            icon: Icon(Icons.confirmation_number),
            labelText: 'Verification code',
          ),
        ),
        TextButton(
          onPressed: verify,
          child: Text('Verificar'),
        )
      ],
    );
  }

  void verify() {
    final verificationCode = verificationCodeController.text.trim();
    widget.didProvideVerificationCode(verificationCode);
  }
}
