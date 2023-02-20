import 'package:flutter/material.dart';
import 'package:movie_flutter/src/ui/home/home.dart';
import 'package:movie_flutter/src/ui/login/login.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            Column(
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
                          child: const Image(
                              image: AssetImage('lib/assets/images/movie_logo.png'))),
                      const Text(
                        'Login to Your Account',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Container(
                        height: 50,
                        margin: const EdgeInsets.only(
                          left: 20,
                          right: 20,
                          top: 20,
                        ),
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color.fromARGB(255, 233, 228, 228),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            hintText: "Email",
                            prefixIcon: const Icon(Icons.email),
                            prefixIconColor: Colors.grey,
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        margin: const EdgeInsets.only(
                            left: 20, right: 20, top: 20, bottom: 10),
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color.fromARGB(255, 233, 228, 228),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            disabledBorder: InputBorder.none,
                            hintText: "Password",
                            prefixIcon: const Icon(Icons.lock),
                            prefixIconColor: Colors.grey,
                            suffixIcon: const Icon(Icons.visibility_off),
                            suffixIconColor: Colors.grey,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Checkbox(
                            value: false,
                            fillColor: MaterialStateProperty.all(Colors.red),
                            onChanged: (bool? value) {
                              print(value);
                            },
                          ),
                          const Text(
                            "Remember me",
                            style: TextStyle(
                                color: Colors.red, fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                      InkWell(
                        child: Center(
                          child: Container(
                              alignment: Alignment.center,
                              height: 50,
                              margin: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Colors.red),
                              child: const Text(
                                "Sign in",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => const Home()));
                        },
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 30),
                        child: const Text(
                          "Forgot the password?",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(left: 20, right: 10),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                color: const Color.fromARGB(255, 217, 203, 203),
                              )),
                            ),
                          ),
                          const Text(
                            "or continue with",
                            style: TextStyle(fontSize: 16),
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(left: 10, right: 20),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                color: const Color.fromARGB(255, 217, 203, 203),
                              )),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30, bottom: 30),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                height: 50,
                                // padding: EdgeInsets.only(left: 10, right: 10),
                                width: 70,
                                decoration: BoxDecoration(
                                    border: Border.all(width: 1, color: Colors.grey),
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Image(
                                    image:
                                        AssetImage("lib/assets/images/facebook.png")),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                height: 50,
                                // padding: EdgeInsets.only(left: 10, right: 10),
                                width: 70,
                                decoration: BoxDecoration(
                                    border: Border.all(width: 1, color: Colors.grey),
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Image(
                                    image:
                                        AssetImage("lib/assets/images/google.png")),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                height: 50,
                                // padding: EdgeInsets.only(left: 10, right: 10),
                                width: 70,
                                decoration: BoxDecoration(
                                    border: Border.all(width: 1, color: Colors.grey),
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Image(
                                    image: AssetImage("lib/assets/images/apple.png")),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Don't have an account? ",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "Sign up",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ),
              ],
            ),
          ]
        ),
      ),
    );
  }
}
