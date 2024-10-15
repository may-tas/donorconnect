import 'package:flutter/material.dart';

import '../login/login.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: screen.width * 0.075,
          right: screen.width * 0.075,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Email Verification',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: screen.height * 0.025),
            const Text(
              'Check your mail inbox to change password',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            SizedBox(height: screen.height * 0.025),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ),
                    (Route<dynamic> route) => false,
                  );
                },
                child: const Text('Back to Login In Page'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



