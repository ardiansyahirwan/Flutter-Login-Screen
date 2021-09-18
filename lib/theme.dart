import 'package:flutter/material.dart';

Color purple = Color(0xFFB226B2);
Color pink = Color(0xFFFF6DA7);
Color pinkForBigCircle = Color(0xFFFF4891);
Color grey = Color(0xFFEEEEEE);

double smallCircle(BuildContext context) =>
    MediaQuery.of(context).size.width * 2 / 3;
double bigCircle(BuildContext context) =>
    MediaQuery.of(context).size.width * 7 / 8;

TextStyle loginTitle =
    TextStyle(fontFamily: "Pacifico", color: Colors.white, fontSize: 30);
