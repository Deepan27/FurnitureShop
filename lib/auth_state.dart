import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:furniture_shop/Login/login.dart';
import 'package:furniture_shop/auth/login_or_register.dart';

import 'home/home.dart';

class AuthState extends StatelessWidget {
  const AuthState({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          //user logged in
          if (snapshot.hasData) {
            return const Home();
          } else {
            return const LoginOrRegister();
          }
        },
      ),
    );
  }
}
