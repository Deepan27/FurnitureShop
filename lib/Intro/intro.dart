import 'package:flutter/material.dart';
import 'package:furniture_shop/general/components/custom_button.dart';
import 'package:google_fonts/google_fonts.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  void login(){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          SafeArea(
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'Home Comfort',
                  style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.italic,
                      fontFamily: GoogleFonts.lato().fontFamily),
                ),
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              child: Image.asset('assets/intro.png'),
            ),
          ),
          CustomButton(text: 'Get Started',onTap: login,),
          const SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Already have an account? '),
              Text('Sign In',style: TextStyle(fontWeight: FontWeight.bold),),
            ],
          ),
          const SizedBox(
            height: 25,
          ),

        ],
      ),
    );
  }
}
