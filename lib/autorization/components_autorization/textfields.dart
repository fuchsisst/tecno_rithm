import 'package:flutter/material.dart';

import '/global_constans/color_constans.dart';

class AuthorizationTextField extends StatelessWidget {
  late final String text;
  late final bool obscureText;

  AuthorizationTextField(this.text, this.obscureText);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        child: TextField(
          obscureText: obscureText,
          style: TextStyle(fontSize: 14, color: White54),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: DarkGrey, width: 1.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: BlueColor, width: 1.0),
            ),
            labelText: text,
            labelStyle: TextStyle(color: White54),
          ),
        ));
  }
}
