import 'package:flutter/material.dart';
import 'package:notes_app/Utils/constants.dart';

void snackBar(BuildContext context, String content) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(content),
      //backgroundColor: kPrimaryColor,
    ),
    //snackBarAnimationStyle:
  );
}

OutlineInputBorder buildBorder([color]) {
  return OutlineInputBorder(
    borderRadius: const BorderRadius.all(Radius.circular(8)),
    borderSide: BorderSide(color: color ?? Colors.white),
  );
}
