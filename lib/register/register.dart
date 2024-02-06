import 'package:flutter/material.dart';
import 'package:furniture_shop/auth_service.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../general/components/custom_button.dart';
import '../general/components/custom_text_field.dart';

class Register extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final void Function()? onTapLogin;

  Register({super.key, required this.onTapLogin});

  void register(AuthService authService, BuildContext context) {
    print('Login button tapped');
    final email = _emailController.text;
    final password = _passwordController.text;
    final confirmPassword = _confirmPasswordController.text;
    if (password == confirmPassword) {
      try {
        authService.signUpWithEmailPassword(email, password);
      } catch (e) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(e.toString())));
      }
    } else {
      //if password doesnt match
      showDialog(
        context: context,
        builder: (context) => const AlertDialog(
          title: Text(
            'Password does not match',
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context, listen: false);

    // TODO: implement build
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              const Icon(
                Icons.chair,
                size: 60,
                color: Colors.blueAccent,
              ),

              const SizedBox(height: 50),

              //Title
              Text(
                "Find your unique piece!",
                style: TextStyle(
                    fontSize: 30, fontFamily: GoogleFonts.lato().fontFamily),
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

              CustomTextField(
                padding: 25,
                hint: "Confirm Password",
                isHidden: true,
                controller: _confirmPasswordController,
              ),

              CustomButton(
                text: 'Register',
                onTap: () => register(authService, context),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already a member? '),
                  GestureDetector(
                    onTap: onTapLogin,
                    child: const Text(
                      'Sign In',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
