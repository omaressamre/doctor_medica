import 'package:flutter/material.dart';

Widget myDefaultBackground() {
  return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xff603EBC), Color(0xff57D5D2)],
              // stops: [0.6, 2],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)));
}
