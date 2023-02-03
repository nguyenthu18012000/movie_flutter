import 'package:flutter/material.dart';
import 'package:movie_flutter/src/ui/login/login.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              child: InkWell(
                child: const Icon(Icons.arrow_back),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const Login()),
                  );
                },
              ),
            ),
            Center(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 30, bottom: 50),
                    child: const Image(image: AssetImage('lib/assets/images/movie_logo.png'))
                  ),
                  const Text(
                    'Login to Your Account',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Email",
                    ),
                  )
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}