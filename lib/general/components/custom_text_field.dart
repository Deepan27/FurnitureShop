import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final double padding;
  final String hint;
  final bool isHidden;
  final TextEditingController controller;

  const CustomTextField({super.key, required this.padding, required this.hint, required this.isHidden, required this.controller});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.all(padding),
      child:  TextField(
        obscureText: isHidden,
        controller: controller,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blueAccent),
          ),
          fillColor: Colors.grey,
          hintText: hint,


        ),
      ),
    );
  }
}
