import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:auth_buttons/auth_buttons.dart';
import 'package:lab8_027/services/auth_service.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  AuthService authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("test"),
      ),
      body: Column(
        children: [
          GoogleAuthButton(
            onPressed: () {
              authService.signInWithGoogle().then(
                (value) {
                  print(value);
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
