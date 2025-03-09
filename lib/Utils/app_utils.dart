import 'package:flutter/material.dart';
import 'package:notes_app/Utils/constants.dart';

void snackBar(BuildContext context, String content) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(content),
      backgroundColor: kPrimaryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
  );
}

OutlineInputBorder buildBorder([color]) {
  return OutlineInputBorder(
    borderRadius: const BorderRadius.all(Radius.circular(8)),
    borderSide: BorderSide(color: color ?? Colors.white),
  );
}
