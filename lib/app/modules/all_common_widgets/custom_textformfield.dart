
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextformfield extends StatelessWidget {
  final String text;
  final IconData? icon;
  const CustomTextformfield({
    super.key, required this.text, this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText:text,
        suffix: Icon(
         icon,
        ),
      ),
    );
  }
}