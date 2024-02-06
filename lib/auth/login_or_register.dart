import 'package:flutter/material.dart';
import 'package:furniture_shop/Login/login.dart';

import '../register/register.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  bool showLoginScreen = true;

  void switchScreen() {
    setState(() {
      showLoginScreen = !showLoginScreen;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginScreen) {
      return Login(
        onTapRegister: switchScreen
      );
    } else {
      return Register(
        onTapLogin: switchScreen,
      );
    }
  }
}
