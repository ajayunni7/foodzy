import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFB6C1),
      appBar: AppBar(
        backgroundColor: const Color(0xffFFB6C1),
      ),
      body: SizedBox(
        height: 60,
        width: 80,
        child: Image.asset('assets/pizza.png'),
      ),
    );
  }
}
