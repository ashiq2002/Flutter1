import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Center(child: Text(
                'Login screen',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w300
              ),
              textScaleFactor: 1.5,
            ),)
          ],
        ),
      ),
    );
  }
}
