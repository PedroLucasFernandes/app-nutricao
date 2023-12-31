import 'package:flutter/material.dart';

class MyFormField extends StatelessWidget {
  final String labelText;
  final IconData? icon;
  final int? maxLines;
  final TextEditingController? controller;
  final bool? obscureText;
  const MyFormField({
      super.key, 
      required this.labelText, 
      this.icon, 
      this.maxLines = 1,
      this.controller,
      this.obscureText,
    });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText ?? false,
      controller: controller,
      maxLines: maxLines,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0XFF355211), width: 2.0),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0XFF355211), width: 2.0),
          borderRadius: BorderRadius.circular(10),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        labelText: labelText,
        suffixIcon: Icon(icon),
        suffixIconColor: Color(0XFF355211),
        focusColor: Color(0XFF355211),
      ),
    );
  }
}