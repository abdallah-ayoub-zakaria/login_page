import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    child: Positioned(
                        child: Image.asset(
                      'assets/images/background.png',
                      fit: BoxFit.fill,
                    )),
                  ),
                  Positioned(
                      left: 20,
                      child: Image.asset('assets/images/light-1.png')),
                  Positioned(
                      left: 150,
                      child: Image.asset('assets/images/light-2.png')),
                  Positioned(
                      top: 30,
                      left: 350,
                      child: Image.asset('assets/images/clock.png')),
                  Positioned(
                      top: 190,
                      left: 200,
                      child: Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 38,
                            fontWeight: FontWeight.bold),
                      )),
                ],
              ),
            ),
          ),
          Expanded(
              child: Padding(
            padding: EdgeInsets.only(left: 50, right: 50),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 20,
                            offset: Offset(0, 10),
                            color: Colors.blue)
                      ]),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: TextFormField(
                          decoration:
                              InputDecoration(hintText: 'Enter your UserName'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Enter your Password'),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)),
                  child: Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Forgot Password?',
                  style: TextStyle(color: Colors.blue, fontSize: 23),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
