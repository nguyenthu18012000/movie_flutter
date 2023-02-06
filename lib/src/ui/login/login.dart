import 'package:flutter/material.dart';
import 'package:movie_flutter/src/ui/login/login_form.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
              child: const Icon(Icons.arrow_back),
            ),
            Center(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: const  Image(image: AssetImage('lib/assets/images/login_home_image.png')),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    child: const Text(
                      "Let's you in",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  OtherLogin(text: "Continue with FaceBook", icon: 'lib/assets/images/facebook.png',),
                  OtherLogin(text: "Continue with Google", icon: 'lib/assets/images/google.png',),
                  OtherLogin(text: "Continue with Apple", icon: 'lib/assets/images/apple.png',),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 20, right: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color.fromARGB(255, 217, 203, 203),)
                    ),
                  ),
                ),
                const Text(
                  "or",
                  style: TextStyle(
                    fontSize: 20
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 10, right: 20),
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color.fromARGB(255, 217, 203, 203),)
                    ),
                  ),
                ),
              ],
            ),
            InkWell(
              child: Center(
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  margin: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.red
                  ),
                  child: const Text(
                    "Sign in with password",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                    )
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const LoginForm())
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Don't have an account? ",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18
                  ),
                ),
                Text(
                  "Sign up",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 18
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class OtherLogin extends StatelessWidget {
  String text;
  String icon;

  OtherLogin({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    print(text);
    // String s = text is String ? 'aaaaa' : 'alksjdfhlakjsdhf';
    return Container(
      margin: const EdgeInsets.only(right: 20, left: 20, bottom: 15),
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromARGB(255, 211, 202, 202)),
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      child: InkWell(
        onTap: () {
          print(text);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(icon),
              height: 60,
            ),
            Text(
              "$text",
              style: TextStyle(
                fontSize: 19,
                height: 1,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}