import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_shop/auth_service.dart';
import 'package:furniture_shop/general/components/custom_text_field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../general/components/custom_button.dart';

class Login extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final void Function()? onTapRegister;
  Login({super.key, required this.onTapRegister});

  void login(AuthService authService, BuildContext context) {
    print('Login button tapped');
    final email = _emailController.text;
    final password = _passwordController.text;
    try {
      authService.signInWithEmailPassword(email, password);
    } catch (e) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(
            e.toString(),
          ),
        ),
      );
    }
  }


  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context, listen: false);

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //logo
                const Icon(
                  Icons.chair,
                  size: 100,
                  color: Colors.blueAccent,
                ),

                const SizedBox(height: 25),

                //Title
                Text(
                  "Find your unique piece!",
                  style: TextStyle(
                      fontSize: 36, fontFamily: GoogleFonts.lato().fontFamily),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(
                  height: 50,
                ),
                //email textfield
                CustomTextField(
                  padding: 25,
                  hint: "E-mail",
                  isHidden: false,
                  controller: _emailController,
                ),
                //password textfield

                CustomTextField(
                  padding: 25,
                  hint: "Password",
                  isHidden: true,
                  controller: _passwordController,
                ),

                //login button
                CustomButton(
                  text: 'Login',
                  onTap: () => login(authService, context),
                ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Not a member? '),
                    GestureDetector(
                      onTap: onTapRegister,
                      child: const Text(
                        'Register now',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),

                //register button
              ],
            ),
          ),
        ),
      ),
    );
  }
}
