import 'package:flutter/material.dart';

Widget myTextFormField({
  required String labelText,
  required Color labelColor,
  required Color borderColor,
  required IconData prefixIcon,
}) =>
    TextFormField(
      decoration: InputDecoration(
        label: Text(labelText),
        labelStyle: TextStyle(color: labelColor),
        prefix: Icon(prefixIcon),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.horizontal(
              right: Radius.circular(10),
              left: Radius.circular(10),
            ),
            borderSide: BorderSide(color: borderColor)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.horizontal(
              right: Radius.circular(10),
              left: Radius.circular(10),
            ),
            borderSide: BorderSide(color: borderColor)),
      ),
    );
