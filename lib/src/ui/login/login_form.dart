import 'package:flutter/material.dart';
import 'package:movie_flutter/src/ui/login/login.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: InkWell(
          child: Container(
            child: Text('aaaaaaaaa'),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const Login()),
            );
          },
        ),
      ),
    );
  }
}